-- 原创模块
local E, L, V, P, G = unpack(ElvUI)
local WT = E:GetModule("WindTools")
local CB = E:NewModule('Wind_ChatBar', 'AceHook-3.0', 'AceEvent-3.0')

local _
local _G = _G
local ipairs = ipairs
local format = format
local CreateFrame = CreateFrame
local GetChannelName = GetChannelName
local JoinChannelByName = JoinChannelByName
local LeaveChannelByName = LeaveChannelByName
local InCombatLockdown = InCombatLockdown
local ChatFrame_AddChannel = ChatFrame_AddChannel
local DefaultChatFrame = _G.DEFAULT_CHAT_FRAME
local C_Timer_After = C_Timer.After
local LE_PARTY_CATEGORY_HOME = LE_PARTY_CATEGORY_HOME
local LE_PARTY_CATEGORY_INSTANCE = LE_PARTY_CATEGORY_INSTANCE
local UnitIsGroupLeader = UnitIsGroupLeader
local UnitIsGroupAssistant = UnitIsGroupAssistant
local IsEveryoneAssistant = IsEveryoneAssistant

local normal_channels_index = {"SAY", "YELL", "PARTY", "INSTANCE", "RAID", "RAID_WARNING", "GUILD", "EMOTE"}

local check_funcs = {
    ["PARTY"] = function() return IsInGroup(LE_PARTY_CATEGORY_HOME) end,
    ["INSTANCE"] = function() return IsInGroup(LE_PARTY_CATEGORY_INSTANCE) end,
    ["RAID"] = function() return IsInRaid() end,
    ["RAID_WARNING"] = function()
        return IsInRaid() and (UnitIsGroupLeader("player") or UnitIsGroupAssistant("player") or IsEveryoneAssistant())
    end,
    ["GUILD"] = function() return IsInGuild() end,
    ["OFFICER"] = function() return IsInGuild() and CanEditOfficerNote() end
}

function CB:DebugPrint(text) print(L["WindTools"] .. " " .. L["Chat Bar"] .. ": " .. text) end

function CB:UpdateButton(name, func, anchor_point, x, y, color, tex, tooltip, tips, abbr)
    local ElvUIValueColor = E.db.general.valuecolor

    if not self.bar[name] then
        -- 按键本体
        local button = CreateFrame("Button", nil, UIParent, "SecureActionButtonTemplate")
        button:StripTextures()
        button:SetBackdropBorderColor(0, 0, 0)
        button:RegisterForClicks("AnyDown")
        button:SetScript("OnMouseUp", func)

        -- 鼠标提示
        button:SetScript("OnEnter", function(self)
            self:SetBackdropBorderColor(ElvUIValueColor.r, ElvUIValueColor.g, ElvUIValueColor.b)
            GameTooltip:SetOwner(self, "ANCHOR_TOP")
            GameTooltip:SetText(tooltip or _G[name] or "")
            if tips then for _, tip in ipairs(tips) do GameTooltip:AddLine(tip) end end
            GameTooltip:Show()
        end)

        button:SetScript("OnLeave", function(self)
            self:SetBackdropBorderColor(0, 0, 0)
            GameTooltip:Hide()
        end)

        -- 块状风格条
        if self.db.style.block_type.enabled then
            button.colorBlock = button:CreateTexture(nil, "ARTWORK")
            button.colorBlock:SetAllPoints()
            button:CreateBackdrop('Transparent')
            button.backdrop:CreateShadow()
        end

        -- 文字风格条
        -- 预留（建立文字格式）

        self.bar[name] = button
    end

    -- 块状风格条 设置更新
    if self.db.style.block_type.enabled then
        self.bar[name].colorBlock:SetTexture(tex and E.Libs.LSM:Fetch('statusbar', tex) or E.media.normTex)
        self.bar[name].colorBlock:SetVertexColor(unpack(color or {1, 1, 1, 1}));
        if self.db.style.block_type.shadow then
            self.bar[name].backdrop.shadow:Show()
        else
            self.bar[name].backdrop.shadow:Hide()
        end
    end

    -- 尺寸和位置更新
    self.bar[name]:Size(CB.db.style.width, CB.db.style.height)
    self.bar[name]:ClearAllPoints()
    self.bar[name]:Point(anchor_point, CB.bar, anchor_point, x, y)

    self.bar[name]:Show()

    return self.bar[name]
end

function CB:DisableButton(name) if self.bar[name] then self.bar[name]:Hide() end end

function CB:UpdateBar()
    if (not self.bar) or self.AlreadyWaitForUpdate then return end

    if InCombatLockdown() then
        self.AlreadyWaitForUpdate = true
        self:RegisterEvent("PLAYER_REGEN_ENABLED")
        return
    end

    -- 记录按钮个数来方便更新条的大小
    local numberOfButtons = 0
    local width, height

    local anchor = self.db.style.orientation == "HORIZONTAL" and "LEFT" or "TOP"
    local pos_x = 0
    local pos_y = 0

    if self.db.style.bar_backdrop then
        -- 有背景边距的情况下，初始化第一个按钮的定位
        if anchor == "LEFT" then
            pos_x = pos_x + self.db.style.padding
        else
            pos_y = pos_y - self.db.style.padding
        end
    end

    -- 建立普通频道条
    for _, name in ipairs(normal_channels_index) do
        local db = self.db.normal_channels[name]
        if db.enabled then
            local chatFunc = function(self, mouseButton)
                if mouseButton ~= "LeftButton" then return end
                local currentText = DefaultChatFrame.editBox:GetText()
                local command = format("/%s ", db.cmd)
                ChatFrame_OpenChat(command .. currentText, DefaultChatFrame)
            end

            self:UpdateButton(name, chatFunc, anchor, pos_x, pos_y, db.color, self.db.style.block_type.tex, nil, nil,
                              db.abbr)
            numberOfButtons = numberOfButtons + 1

            -- 调整锚点到下一个按钮的位置上
            if anchor == "LEFT" then
                pos_x = pos_x + self.db.style.width + self.db.style.padding
            else
                pos_y = pos_y - self.db.style.height - self.db.style.padding
            end
        else
            self:DisableButton(name)
        end
    end

    -- 建立世界频道条
    if self.db.world_channel.enabled then
        local worldChannelName = self.db.world_channel.channel_name
        if not worldChannelName or worldChannelName == "" then
            self:DebugPrint(L["World channel no found, please setup again."])
            return
        end

        local chatFunc = function(self, mouseButton)
            local channelId = GetChannelName(worldChannelName)
            if mouseButton == "LeftButton" then
                local autoJoined = false
                -- 自动加入
                if channelId == 0 and CB.db.world_channel.auto_join then
                    JoinChannelByName(worldChannelName)
                    ChatFrame_AddChannel(DEFAULT_CHAT_FRAME, worldChannelName)
                    channelId = GetChannelName(worldChannelName)
                    autoJoined = true
                end
                if channelId == 0 then return end
                local currentText = DefaultChatFrame.editBox:GetText()
                local command = format("/%s ", channelId)
                if autoJoined then
                    -- 刚切过去要稍微过一会才能让聊天框反映为频道
                    C_Timer_After(.5, function()
                        ChatFrame_OpenChat(command .. currentText, DefaultChatFrame)
                    end)
                else
                    ChatFrame_OpenChat(command .. currentText, DefaultChatFrame)
                end
            elseif mouseButton == "RightButton" then
                if channelId == 0 then
                    JoinChannelByName(worldChannelName)
                    ChatFrame_AddChannel(DEFAULT_CHAT_FRAME, worldChannelName)
                else
                    LeaveChannelByName(worldChannelName)
                end
            end
        end

        self:UpdateButton("WORLD", chatFunc, anchor, pos_x, pos_y, self.db.world_channel.color,
                          self.db.style.block_type.tex, worldChannelName, {
            L["Left Click: Change to"] .. " " .. worldChannelName,
            L["Right Click: Join/Leave"] .. " " .. worldChannelName
        }, self.db.world_channel.abbr)

        numberOfButtons = numberOfButtons + 1

        -- 调整锚点到下一个按钮的位置上
        if anchor == "LEFT" then
            pos_x = pos_x + self.db.style.width + self.db.style.padding
        else
            pos_y = pos_y - self.db.style.height - self.db.style.padding
        end
    else
        self:DisableButton("WORLD")
    end

    -- 建立表情按键
    if self.db.emote_button.enabled then
        local chatFunc = function(self, mouseButton)
            if mouseButton == "LeftButton" then
                if E.db.WindTools["Chat"]["Chat Frame"]["enabled"] and
                    E.db.WindTools["Chat"]["Chat Frame"].emote.use_panel and _G.Wind_CustomEmoteFrame then
                    if _G.Wind_CustomEmoteFrame:IsShown() then
                        _G.Wind_CustomEmoteFrame:Hide()
                    else
                        _G.Wind_CustomEmoteFrame:Show()
                    end
                end
            end
        end

        self:UpdateButton("WindEmote", chatFunc, anchor, pos_x, pos_y, self.db.emote_button.color,
                          self.db.style.block_type.tex, L["Wind Emote"], {L["Left Click: Toggle"]},
                          self.db.emote_button.abbr)

        numberOfButtons = numberOfButtons + 1

        -- 调整锚点到下一个按钮的位置上
        if anchor == "LEFT" then
            pos_x = pos_x + self.db.style.width + self.db.style.padding
        else
            pos_y = pos_y - self.db.style.height - self.db.style.padding
        end
    else
        self:DisableButton("WindEmote")
    end

    -- 计算条大小
    if self.db.style.bar_backdrop then
        if self.db.style.orientation == "HORIZONTAL" then
            width = self.db.style.padding * (numberOfButtons + 1) + self.db.style.width * numberOfButtons
            height = self.db.style.padding * 2 + self.db.style.height
        else
            width = self.db.style.padding * 2 + self.db.style.width
            height = self.db.style.padding * (numberOfButtons + 1) + self.db.style.height * numberOfButtons
        end
    else -- 如果没有背景，背景边距自然也不用算在框架大小内
        if self.db.style.orientation == "HORIZONTAL" then
            width = self.db.style.padding * (numberOfButtons - 1) + self.db.style.width * numberOfButtons
            height = self.db.style.height
        else
            width = self.db.style.width
            height = self.db.style.padding * (numberOfButtons - 1) + self.db.style.height * numberOfButtons
        end
    end

    self.bar:Size(width, height)

    if self.db.style.bar_backdrop then
        self.bar.backdrop:Show()
    else
        self.bar.backdrop:Hide()
    end
end

function CB:CreateBar()
    self.bar = CreateFrame("Frame", "Wind_ChatBar", E.UIParent, "SecureHandlerStateTemplate")
    self.bar:SetResizable(false)
    self.bar:SetClampedToScreen(true)
    self.bar:SetFrameStrata('LOW')
    self.bar:CreateBackdrop('Transparent')
    self.bar:ClearAllPoints()
    self.bar:Point("BOTTOMLEFT", LeftChatPanel, "TOPLEFT", 6, 3)
    self.bar.backdrop:CreateShadow()
end

function CB:PLAYER_REGEN_ENABLED()
    self:UpdateBar()
    self:UnregisterEvent("PLAYER_REGEN_ENABLED")
end

function CB:Initialize()
    if not E.db.WindTools["Chat"]["Chat Bar"].enabled then return end
    self.db = E.db.WindTools["Chat"]["Chat Bar"]

    tinsert(WT.UpdateAll, function() CB.db = E.db.WindTools["Chat"]["Chat Bar"] end)

    CB:CreateBar()
    CB:UpdateBar()

    E:CreateMover(CB.bar, "Wind_ChatBarMover", L["Chat Bar"], nil, nil, nil, 'WINDTOOLS,ALL',
                  function() return CB.db.enabled; end)
end

local function InitializeCallback() CB:Initialize() end

E:RegisterModule(CB:GetName(), InitializeCallback)
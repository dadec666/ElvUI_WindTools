local W, F, E, L = unpack(select(2, ...))
local S = W:GetModule("Skins")

local _G = _G
local MAX_ADDONS_DISPLAYED = _G.MAX_ADDONS_DISPLAYED

function S:AddonList_Update()
    for i = 1, MAX_ADDONS_DISPLAYED do
        local entry = _G["AddonListEntry" .. i]
        local string = _G["AddonListEntry" .. i .. "Title"]
        F.SetFontOutline(string)
        F.SetFontOutline(entry.Status)
        F.SetFontOutline(entry.Reload)
    end
end

function S:AddonList()
    if not (E.private.skins.blizzard.enable and E.private.skins.blizzard.addonManager) then
        return
    end
    if not (E.private.WT.skins.blizzard.enable and E.private.WT.skins.blizzard.addonManager) then
        return
    end

    S:CreateShadow(_G.AddonList)
    S:SecureHook("AddonList_Update")
end

S:AddCallback("AddonList")
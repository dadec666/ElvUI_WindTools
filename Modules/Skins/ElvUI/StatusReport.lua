local W, F, E, L = unpack(select(2, ...))
local S = W:GetModule("Skins")

local _G = _G
local hooksecurefunc = hooksecurefunc

function S:ElvUI_SkinStatusReport()
    self:CreateShadow(_G.ElvUIStatusReport)
    self:CreateShadow(_G.ElvUIStatusPlugins)
end

function S:ElvUI_StatusReport()
    if not (E.private.WT.skins.elvui.enable and E.private.WT.skins.elvui.statusReport) then
        return
    end

    if E.StatusFrame then
        S:ElvUI_SkinStatusReport()
    end

    S:SecureHook(E, "CreateStatusFrame", "ElvUI_SkinStatusReport")
end

S:AddCallback("ElvUI_StatusReport")

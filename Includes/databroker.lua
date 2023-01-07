--[[
                                      \\\\///
                                     /       \
                                   (| (.)(.) |)
     .---------------------------.OOOo--()--oOOO.---------------------------.
     |                                                                      |
     |  PapaBearDoes's DadGratz Addon for World of Warcraft                 |
     |  @project-version@
     ######################################################################## ]]
--   ## Let's init this file shall we?
-- Imports
local _G = _G
local me, ns = ...
local DadGratz = ns
local L = DadGratz:GetLocale()
-- End Imports
--[[ ######################################################################## ]]
--   ## Do All The Things!!!
--LDB
DadGratz_LDB = LibStub("LibDataBroker-1.1")
DadGratzLDB = DadGratz_LDB:NewDataObject("DadGratzLDB", {
  type = "data source",
  label = L["AddonName"],
  text = "",
  icon = "Interface\\Icons\\Achievement_guildperk_bartering",
  OnClick = function(frame, click)
    if click == "RightButton" then
      DadGratz:ShowConfig()
    end
  end,
  OnTooltipShow = function(tooltip)
    if not tooltip or not tooltip.AddLine then
      return
    end
    tooltip:AddLine(L["AddonName"] .. " " .. GetAddOnMetadata("DadGratz", "Version"))
    
    if DadGratz.db.profile.doNaughty == true then
      tooltip:AddLine(L["NaughtyGratzEnabled"] .. ".")
    else
      tooltip:AddLine(L["NaughtyGratzDisabled"] .. ".")
    end
    if DadGratz.db.profile.doDark == true then
      tooltip:AddLine(L["DarkGratzEnabled"] .. ".")
    else
      tooltip:AddLine(L["DarkGratzDisabled"] .. ".")
    end
    if DadGratz.db.profile.doCustom == true then
      tooltip:AddLine(L["CustomGratzEnabled"] .. ".")
    else
      tooltip:AddLine(L["CustomGratzDisabled"] .. ".")
    end

    tooltip:AddLine(" ")
    tooltip:AddLine(DadGratz:Colorize(L["RightClick"] .. " ", "eda55f") .. L["RightClickToolTip"])
  end,
})

function DadGratz:MiniMapIcon()
  DadGratzIcon = LibStub("LibDBIcon-1.0")
  if not DadGratzIcon:IsRegistered(me .. "_mapIcon") then
    DadGratzIcon:Register(me .. "_mapIcon", DadGratzLDB, DadGratz.db.profile.mmIcon)
  end
end
--[[
     ########################################################################
     |  Last Editted By: @file-author@ - @file-date-iso@
     |  @file-hash@
     |                                                                      |
     '-------------------------.oooO----------------------------------------|
                              (    )     Oooo.
                              \  (     (    )
                               \__)     )  /
                                       (__/                                   ]]
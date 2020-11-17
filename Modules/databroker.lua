--[[
                                      \\\\///
                                     /       \
                                   (| (.)(.) |)
     .---------------------------.OOOo--()--oOOO.---------------------------.
     |                                                                      |
     |  @file-author@'s <~Addon Name~> Addon for World of Warcraft
     ######################################################################## ]]
--   ## Let's init this file shall we?
-- Imports
local _G = _G
--Durrr = select(2, ...)
local me, ns = ...
local addon = ns
local L = addon:GetLocale()
-- End Imports
--[[ ######################################################################## ]]
--   ## Do All The Things!!!
-- Do LDB stuff --
LDB = LibStub("LibDataBroker-1.1")
AddonLDB = LDB:NewDataObject("AddonLDB", {
  type = "data source",
  label = "",
  text = "",
  icon = "",
  OnClick = function(frame, click)
    if click == "RightButton" then
      addon:ShowConfig()
    end
    addon:MainUpdate()
  end,
  OnTooltipShow = function(tooltip)
    if not tooltip or not tooltip.AddLine then return end
    tooltip:AddLine(L["AddonName"] .. " " .. GetAddOnMetadata(me, "Version"))
    tooltip:AddLine(" ")

    tooltip:AddLine(addon:Colorize(L["RightClick"] .. " ", "eda55f") .. L["RightToolTip"])
  end,
})

function addon:MainUpdate()
end

function addon:UpdateIcon()
end
-- End LDB stuff --

--[[
     ########################################################################
     |  Last Editted By: @file-author@ - @file-date-iso@
     |  @file-revision@
     |                                                                      |
     '-------------------------.oooO----------------------------------------|
                              (    )     Oooo.
                              \  (     (    )
                               \__)     )  /
                                       (__/                                   ]]

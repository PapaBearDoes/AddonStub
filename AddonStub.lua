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
local me, ns = ...
local addon = LibStub("LibInit"):NewAddon(ns, me, true, "AceConsole-3.0", "AceEvent-3.0", "AceTimer-3.0", "AceHook-3.0", "AceHook-3.0")
local L = addon:GetLocale()
-- End Imports
--[[ ######################################################################## ]]
--   ## Do All The Things!!!
function addon:OnInitialize()
  addon.db = LibStub("AceDB-3.0"):New("AddonDB", addon.dbDefaults, "Default")
  if not addon.db then
    local errorDB = L["ErrorDB"]
    print(errorDB)
  end
  addon.db.RegisterCallback(self, "OnProfileChanged", "UpdateProfile")
  addon.db.RegisterCallback(self, "OnProfileCopied", "UpdateProfile")
  addon.db.RegisterCallback(self, "OnProfileReset", "UpdateProfile")

  addon.options.args.profile = LibStub("AceDBOptions-3.0"):GetOptionsTable(addon.db)
  LibStub("AceConfig-3.0"):RegisterOptionsTable(me, addon.options, nil)

  -- Enable/disable modules based on saved settings
	for name, module in addon:IterateModules() do
		module:SetEnabledState(addon.db.profile.moduleEnabledState[name] or false)
    if module.OnEnable then
      hooksecurefunc(module, "OnEnable", addon.OnModuleEnable_Common)
    end
  end

  addon:RegisterEvent("PLAYER_DEAD", "ScheduleUpdate")
  addon:CreateDialogs()
  addon:MiniMapIcon()
  addon:UpdateIcon()
  addon:ScheduleUpdate()
end

function addon:OnModuleEnable_Common()
end

function addon:MiniMapIcon()
  if icon == nil or not icon then
    icon = LDB and LibStub("LibDBIcon-1.0")
    icon:Register("Addon_MapIcon", AddonLDB)
  end
end

function addon:OnEnable()
  local addon_Dialog = LibStub("AceConfigDialog-3.0")
  addon_OptionFrames = {}
  addon_OptionFrames.general = addon_Dialog:AddToBlizOptions("addon", nil, nil, "general")
  addon_OptionFrames.profile = addon_Dialog:AddToBlizOptions("addon", L["Profiles"], "addon", "profile")
  addon:ScheduleRepeatingTimer("MainUpdate", 1)
end

function addon:OnDisable()
end

-- Config window --
function addon:ShowConfig()
	InterfaceOptionsFrame_OpenToCategory(addon_OptionFrames.profile)
	InterfaceOptionsFrame_OpenToCategory(addon_OptionFrames.general)
end
-- End Options --

function addon:UpdateOptions()
  LibStub("AceConfigRegistry-3.0"):NotifyChange(me)
end

function addon:UpdateProfile()
  addon:ScheduleTimer("UpdateProfileDelayed", 0)
end

function addon:OnProfileChanged(event, database, newProfileKey)
  addon.db.profile = database.profile
end

function addon:UpdateProfileDelayed()
  for timerKey, timerValue in addon:IterateModules() do
    if timerValue.db.profile.on then
      if timerValue:IsEnabled() then
        timerValue:Disable()
        timerValue:Enable()
      else
        timerValue:Enable()
      end
    else
      timerValue:Disable()
    end
  end

  addon:UpdateOptions()
end

function addon:OnProfileReset()
end
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

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
--OptionsTable
DadGratz.options = {
  type = "group",
  name = L["AddonName"],
  args = {
    general = {
      order = 1,
      type = "group",
      name = L["GeneralSettings"],
      cmdInline = true,
      args = {
        separator1 = {
          order = 1,
          type = "header",
          name = L["GratzOptions"],
        },
        doCustom = {
          order = 2,
          type = "toggle",
          name = L["DoCustomGratz"],
          desc = L["DoCustomGratzDesc"],
          get = function()
            return DadGratz.db.profile.doCustom
          end,
          set = function(key, value)
            DadGratz.db.profile.doCustom = value
            if not DadGratz.db.profile.doCustom then
              DadGratz.db.profile.doCustom = value
            end
          end,
        },
        doNaughty = {
          order = 3,
          type = "toggle",
          name = L["DoNaughtyGratz"],
          desc = L["DoNaughtyGratzDesc"],
          get = function()
            return DadGratz.db.profile.doNaughty
          end,
          set = function(key, value)
            DadGratz.db.profile.doNaughty = value
            if not DadGratz.db.profile.doNaughty then
              DadGratz.db.profile.doNaughty = value
            end
          end,
        },
        doDark = {
          order = 4,
          type = "toggle",
          name = L["DoDarkGratz"],
          desc = L["DoDarkGratzDesc"],
          get = function()
            return DadGratz.db.profile.doDark
          end,
          set = function(key, value)
            DadGratz.db.profile.doDark = value
            if not DadGratz.db.profile.doDark then
              DadGratz.db.profile.doDark = value
            end
          end,
        },
        showMinimapButton = {
          order = 5,
          type = "toggle",
          name = L["ShowMinimapButton"],
          desc = L["ShowMinimapButtonDesc"],
          get = function()
            if DadGratz.db.profile.mmIcon.hide == true then
              show = false
            else
              show = true
            end
            return show
          end,
          set = function(key, value)
            if value == true then
              DadGratz.db.profile.mmIcon.hide = false
              DadGratzIcon:Show(me .. "_mapIcon")
            else
              DadGratz.db.profile.mmIcon.hide = true
              DadGratzIcon:Hide(me .. "_mapIcon")
            end
          end
        },
        separator2 = {
          order = 6,
          type = "header",
          name = L["BuiltinWeights"],
        },
        dadWeight = {
          order = 7,
          type = "range",
          name = L["DadWeight"],
          desc = L["DadWeightDesc"],
          min = -1,
          max = 1,
          step = 1,
          width = "normal",
          get = function()
            return DadGratz.db.profile.weight.dad
          end,
          set = function(key, value)
            DadGratz.db.profile.weight.dad = value
          end,
        },
        niceWeight = {
          order = 8,
          type = "range",
          name = L["NiceWeight"],
          desc = L["NiceWeightDesc"],
          min = -1,
          max = 1,
          step = 1,
          width = "normal",
          get = function()
            return DadGratz.db.profile.weight.nice
          end,
          set = function(key, value)
            DadGratz.db.profile.weight.nice = value
          end,
        },
        separator3 = {
          order = 9,
          type = "header",
          name = L["GratzWeights"],
        },
        customWeight = {
          order = 10,
          type = "range",
          name = L["CustomWeight"],
          desc = L["CustomWeightDesc"],
          min = -1,
          max = 1,
          step = 1,
          width = "normal",
          get = function()
            return DadGratz.db.profile.weight.custom
          end,
          set = function(key, value)
            DadGratz.db.profile.weight.custom = value
          end,
          disabled = function()
            return (DadGratz.db.profile.doCustom == false)
          end,
        },
        naughtyWeight = {
          order = 11,
          type = "range",
          name = L["NaughtyWeight"],
          desc = L["NaughtyWeightDesc"],
          min = -1,
          max = 1,
          step = 1,
          width = "normal",
          get = function()
            return DadGratz.db.profile.weight.naughty
          end,
          set = function(key, value)
            DadGratz.db.profile.weight.naughty = value
          end,
          disabled = function()
            return (DadGratz.db.profile.doNaughty == false)
          end,
        },
        darkWeight = {
          order = 12,
          type = "range",
          name = L["DarkWeight"],
          desc = L["DarkWeightDesc"],
          min = -1,
          max = 1,
          step = 1,
          width = "normal",
          get = function()
            return DadGratz.db.profile.weight.dark
          end,
          set = function(key, value)
            DadGratz.db.profile.weight.dark = value
          end,
          disabled = function()
            return (DadGratz.db.profile.doDark == false)
          end,
        },
      },
    },
    custom = {
      order = 2,
      type = "group",
      name = L["CustomGratzSettings"],
      cmdInline = true,
      args = {
        separator4 = {
          order = 1,
          type = "header",
          name = L["AddCustomGratz"],
        },
        addCustomGratz = {
          order = 2,
          type = "input",
          width = "full",
          name = L["AddCustomGratz"],
          desc = L["AddCustomGratzDesc"],
          get = function()
            return
          end,
          set = function(key, value)
            print("Value: " .. value)
            DadGratz.db.profile.customGratz[value] = value
            local n = DadGratz:TableLength(DadGratz.db.profile.customGratz)
            if n > 0 then
              DadGratz.db.profile.doCustom = true
            end
            DadGratz:UpdateProfile()
          end,
        },
        separator5 = {
          order = 3,
          type = "header",
          name = L["ListCustomGratz"],
        },
        listCustomGratz = {
          order = 4,
          type = "select",
          width = "full",
          confirm = true,
          name = L["DelCustomGratz"],
          desc = L["DelCustomGratzDesc"],
          style = "radio",
          get = function()
          end,
          set = function(key, value)
            print("Delete: " .. value .. " - CONFIRMED")
            DadGratz.db.profile.customGratz[value] = nil
            local n = DadGratz:TableLength(DadGratz.db.profile.customGratz)
            if n == 0 or n < 1 or n == nil then
              DadGratz.db.profile.doCustom = false
            end

            DadGratz:UpdateProfile()
          end,
          values = function()
            return DadGratz.db.profile.customGratz
          end,
        },
      },
    },
  },
}
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
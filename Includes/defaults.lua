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
-- Create DB defaults
DadGratz.dbDefaults = {
  global = {
    cheevoCount = 0,
  },
  profile = {
    testMode = false,
    weight = {
      dad = 0,
      nice = 0,
      custom = 0,
      naughty = 0,
      dark = 0,
    },
    doNaughty = true,
    doDark = true,
    doCustom = true,
    mmIcon = {
      hide = false,
      minimapPos = 205,
    },
    customGratz = {},
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
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
function DadGratz:TriggeredEvent(message, recipient, channel)
  DadGratz.db.global.cheevoCount = DadGratz.db.global.cheevoCount + 1

  if DadGratz.db.profile.testMode == true then
    print("DadGratz:TriggeredEvent")
    print("Cheevo Count: " .. DadGratz.db.global.cheevoCount)
  end

  if DadGratz.db.global.cheevoCount < 2 then
    DadGratz:ScheduleTimer("Process", 5, message, recipient, channel)
  end
end

function DadGratz:Process(message, recipient, channel)
  if DadGratz.db.profile.testMode == true then
    print("DadGratz:Process")
  end
  local s, e = string.find(recipient, "[^-]+")
  local guildy = string.sub(recipient, 1, e)
  
  if UnitName("player") == guildy then
    print(L["AddonName"] .. ": " .. L["MyAchievement"])
    if DadGratz.db.profile.testMode == true then
      local delay = math.random(1, 10)
      print("Delay: " .. delay)
      DadGratz:ScheduleTimer("pickGratz", delay, guildy)
    end
  else
    if DadGratz.db.global.cheevoCount > 3 then
      guildy = L["everyone"]
    end

    local delay = math.random(1, 10)
    if DadGratz.db.profile.testMode == true then
      print("Delay: " .. delay)
    end
    DadGratz:ScheduleTimer("pickGratz", delay, guildy)
  end
  DadGratz.db.global.cheevoCount = 0
end

function DadGratz:pickGratz(guildy)
  if DadGratz.db.profile.testMode == true then
    print("DadGratz:pickGratz")
  end

  local gratzType = {
    "Dad",
    "Nice",
  }
  if DadGratz.db.profile.weight.dad == 0 then
    table.insert(gratzType, "Dad")
  elseif DadGratz.db.profile.weight.dad == 1 then
    table.insert(gratzType, "Dad")
    table.insert(gratzType, "Dad")
  end
  
  if DadGratz.db.profile.weight.nice == 0 then
    table.insert(gratzType, "Nice")
  elseif DadGratz.db.profile.weight.nice == 1 then
    table.insert(gratzType, "Nice")
    table.insert(gratzType, "Nice")
  end
  
  if DadGratz.db.profile.doCustom == true then
    table.insert(gratzType, "Custom")
    if DadGratz.db.profile.weight.custom == 0 then
      table.insert(gratzType, "Custom")
    elseif DadGratz.db.profile.weight.dad == 1 then
      table.insert(gratzType, "Custom")
      table.insert(gratzType, "Custom")
    end
  end

  if DadGratz.db.profile.doNaughty == true then
    table.insert(gratzType, "Naughty")
    if DadGratz.db.profile.weight.naughty == 0 then
      table.insert(gratzType, "Naughty")
    elseif DadGratz.db.profile.weight.dad == 1 then
      table.insert(gratzType, "Naughty")
      table.insert(gratzType, "Naughty")
    end
  end

  if DadGratz.db.profile.doDark == true then
    table.insert(gratzType, "Dark")
    if DadGratz.db.profile.weight.custom == 0 then
      table.insert(gratzType, "Dark")
    elseif DadGratz.db.profile.weight.dad == 1 then
      table.insert(gratzType, "Dark")
      table.insert(gratzType, "Dark")
    end
  end
  
  if DadGratz.db.profile.testMode == true then
    for k, v in pairs(gratzType) do
      print(k .. ": " .. v)
    end
  end
  
  local typeN = DadGratz:TableLength(gratzType)
  local typePick = math.random(1, typeN)
  if DadGratz.db.profile.testMode == true then
    print("Pick: " .. typePick)
  end
  local gratzTable = "gratz" .. gratzType[typePick]
  
  if DadGratz.db.profile.testMode == true then
    print("")
    print("======================")
    print("GratzTable: " .. gratzTable)
  end
  
  if gratzTable == "gratzCustom" then
    local gratzSize = DadGratz:TableLength(DadGratz.db.profile.customGratz)
    if DadGratz.db.profile.testMode == true then
      print("GratzSize: " .. gratzSize)
    end
    local gratzRand = math.random(1, gratzSize)
    if DadGratz.db.profile.testMode == true then
      print("GratzRand: " .. gratzRand)
    end
    gratz = DadGratz:FindGratz(DadGratz.db.profile.customGratz, gratzRand)
    if DadGratz.db.profile.testMode == true then
      print("Gratz:")
      print(string.format(gratz, guildy))
    end
  else
    local gratzSize = DadGratz:TableLength(L[gratzTable])
    if DadGratz.db.profile.testMode == true then
      print("GratzSize: " .. gratzSize)
    end
    local gratzRand = math.random(1, gratzSize)
    if DadGratz.db.profile.testMode == true then
      print("GratzRand: " .. gratzRand)
    end
    gratz = DadGratz:FindGratz(L[gratzTable], gratzRand)
    if DadGratz.db.profile.testMode == true then
      print("Gratz:")
      print(string.format(gratz, guildy))
    end
  end
  
  if DadGratz.db.profile.testMode == false then
    DadGratz:SendMessage(string.format(gratz, guildy), guildy, "GUILD")
  end

  if DadGratz.db.profile.testMode == true then
    print("======================")
    print("")
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
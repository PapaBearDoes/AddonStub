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
local me, ns = ...
local L = LibStub("AceLocale-3.0"):NewLocale(me, "enUS", true)
local L = L or {}
-- End Imports
--[[ ######################################################################## ]]
--   ## Do All The Things!!!
-- enUS Localization
--@localization(locale="enUS", format="lua_additive_table", same-key-is-true=true, handle-subnamespaces="subtable")@
--@do-not-package@
L["AddCustomGratz"] = "Add Custom Gratz"
L["AddCustomGratzDesc"] = "Add Custom Gratz Desc"
L["AddonName"] = "DadGratz"
L["BuiltinWeights"] = "Builtin Gratz Weights"
L["CustomGratz"] = "Custom Gratz"
L["CustomGratzDisabled"] = "Custom Gratz disabled."
L["CustomGratzEnabled"] = "Custom Gratz enabled."
L["CustomGratzSettings"] = "Custom Gratz Settings"
L["CustomWeight"] = "Custom Gratz Weight"
L["CustomWeightDesc"] = "Custom Gratz Weight Description"
L["DadWeight"] = "Dad Gratz Weight"
L["DadWeightDesc"] = "Dad Gratz Weight Description"
L["DarkGratz"] = "Dark Humor Gratz"
L["DarkGratzDisabled"] = "Dark Humor Gratz disabled."
L["DarkGratzEnabled"] = "Dark Humor Gratz enabled."
L["DarkOnly"] = "Dark Only"
L["DarkWeight"] = "Dark Gratz Weight"
L["DarkWeightDesc"] = "Dark Gratz Weight Description"
L["DelCustomGratz"] = "List Custom Gratz"
L["DelCustomGratzDesc"] = "Click the gratz you wish to delete, a confirmation window will appear. (THIS IS PERMANENT!!!)"
L["disabled"] = true
L["DoCustomGratz"] = "Do Custom Gratz"
L["DoCustomGratzDesc"] = "Do Custom Gratz"
L["DoDarkGratz"] = "Do Dark Humor Gratz"
L["DoDarkGratzDesc"] = "Do Dark Humor Gratz Description"
L["DoDarkGratzToggle"] = "Do Dark Humor Gratz"
L["DoNaughtyGratz"] = "Do Naughty Gratz"
L["DoNaughtyGratzDesc"] = "Do Naughty Gratz Description"
L["DoNaughtyGratzToggle"] = "Do Naughty Gratz"
L["enabled"] = true
L["everyone"] = true
L["general"] = true
L["GeneralSettings"] = "General Settings"
L["GratzOptions"] = "Gratz Options"
L["GratzWeights"] = "Gratz Weights"
L["GuildAchievementReceived"] = "Guild Achievement Received"
L["GuildMessageReceived"] = "Guild Message Received"
L["ListCustomGratz"] = "List Custom Gratz"
L["ListCustomGratzDesc"] = "Click the gratz you wish to delete, a confirmation window will appear. (THIS IS PERMANENT!!!)"
L["MyAchievement"] = "That's my achievement, not responding."
L["NaughtyAndDark"] = "Naughty and Dark"
L["NaughtyGratz"] = "Naughty Gratz"
L["NaughtyGratzDisabled"] = "Naughty Gratz disabled."
L["NaughtyGratzEnabled"] = "Naughty Gratz enabled."
L["NaughtyOnly"] = "Naughty Only"
L["NaughtyWeight"] = "Naughty Gratz Weight"
L["NaughtyWeightDesc"] = "Naughty Gratz Weight Description"
L["Neither"] = true
L["NiceWeight"] = "Nice Gratz Weight"
L["NiceWeightDesc"] = "Nice Gratz Weight Description"
L["No"] = true
L["profile"] = true
L["Profiles"] = true
L["RightClick"] = "Right Click"
L["RightClickToolTip"] = " to configure addon."
L["ShowMinimapButton"] = "Show Minimap Button"
L["ShowMinimapButtonDesc"] = "Show Minimap Button"
L["TestModeEnabled"] = "Test Mode Enabled"
L["triggering"] = true
L["Yes"] = true
--@end-do-not-package@
L["gratzDad"] = {
	["%s was addicted to soap ... they're clean now though."] = true,
	["Hello %s's achievement. I'm Dad."] = true,
	["I was wondering why %s's achievements kept getting bigger and bigger ... then it hit me."] = true,
	["Two of %s's achievements walked into a bar. The third ducked."] = true,
  ["I totally predicted %s's achievement there!"] = true,
}

L["gratzDark"] = {
	["Austria's biggest achievement was convincing the world that Hitler was German ... what's yours %s?"] = true,
	["Much like the rest of American Gen Z who are alive, %s survived that achievement without getting shot ..."] = true,
  ["If you think I'd joke about %s's achievements and their dementia, you can just forget about it."] = true,
  ["Much like a blind person telling their partner they are seeing someone ... that acheivement was either great ... or really bad."] = true,
  ["'One man's trash is another man's achievement' is a wonderful saying ... but a really bad way of finding out you were adopted."] = true,
  ["I thought about telling a dead baby joke for that achievement, but then decided it was best to abort."] = true,
  ["That achievement is like food; not everyone gets it."] = true,
}

L["gratzNaughty"] = {
	["Is that an achievement you got there %s, or are you just happy to see me?"] = true,
	["Ooo, such a *big* achievement, %s. You're such a good player."] = true,
	["That's very good of you, %s. You're such a good player. Come sit by me and tell me all about it like the good player you are."] = true,
  ["%s stole a bunch of viagra and that achievement from the drugstore. Now they're a hardened criminal."] = true,
  ["Kinky is playfully reminding your partner that the soft achievements can be used for tickles ... Perverted is slapping them with that achievement."] = true,
  ["Much like achievement hunting, one never knows exactly where to look when eating a banana. Congrats, %s!"] = true,
  ["How does one tell the difference between %s, and a submissive? Ask them what a Dungeon Master is ..."] = true,
  ["We had %s pegged from the beginning. Congrats!"] = true,
  ["These achievement jokes cum pretty easy once you get going ..."] = true,
  ["Continue to collect achievements like that %s, and you'll be a cunning linguist in no time!"] = true,
}

L["gratzNice"] = {
	["!!! CONGRATS !!!"] = true,
	["!gratz!"] = true,
	["%s deserves a medal for that ... oh wait, we call them achievements ... WELL DONE!! :D"] = true,
	["*SCHHH* ... this is Grats, permission to land ... *SCHHH* Ground control here, you're clear to land ... %s bring her home! ... *SCHHH*"] = true,
	["... and the grats was to be had for that achievement ... they partied, stayed up late ... and in the morning ... they made waffles!"] = true,
	["... and, as we celebrate %s's achievement, another guildy would like to say a few words ... most likely just one word and sounds like 'mats', but there we go!"] = true,
	["3 blind mice, see how they run ... they saw your epic achievement appear, they ran from the clock in panic and fear, they ran in the road and got squished my dear.."] = true,
	["A great achievement by a great person! :)"] = true,
	["Achievement cometh, and grats shalt follow! Congratulations!"] = true,
	["Achievement detected ... Grats initiated!"] = true,
	["Achievement Detected! Grats initiated! ... CONGRATS! :D"] = true,
	["Achievement meet Grats. Grats meet Achievement! Aww, look how good they are together!"] = true,
	["Achievement score = Achievement score + Achievement amount! :D"] = true,
	["Achievements are the key to Azeroth's soul, %s, and you enrich it so with that one :)"] = true,
	["Achievements be like 'YO CHECK ME OUT', and we're like 'DUDE! We know, rite? awesome!!'"] = true,
	["Achievements shall set you free ... especially that one! GOOD JOB, %s!!"] = true,
	["Achievements, %s, for getting, sharing and boasting about ... or at least that one is!"] = true,
	["Achievements, achievements everywhere! AND ITS AWESOME!"] = true,
	["Ah Yes, %s, perfectly executed achievement, well done!"] = true,
	["Ah yes, Well done! Nice achievement, %s! :D"] = true,
	["AHA, the cheevo game is afoot!"] = true,
	["All the critters in the area are celebrating that achievement, %s, as are we!"] = true,
	["Always let your achievement be your guide, %s!"] = true,
	["Always let your achievements be your guide, %s ... no wait ... ... yeah achievements ... yeah! :D"] = true,
	["An achievement walks into a box ... THE CHATBOX! *badumtchsss"] = true,
	["And now, we see %s's achievement ... see it's Yellow glow as it tries to attract a mate ... the Grats as they are commonly known, come out in numbers to show their superiority ... only one will be worthy!"] = true,
	["And this is what I'm talking about, GREAT ACHIEVEMENT, %s! Like really well done!!! :)"] = true,
	["As we walk through the valley of the achievements of fun, I take a look at my Char and realise I like every single one ..."] = true,
	["At the most opportune time, %s came in with the most awesome achievement!"] = true,
	["Awesome, %s!"] = true,
	["Brilliant achieve, %s!"] = true,
	["By Azeroth! you really rocked that achievement, %s!!"] = true,
	["Congrats on the Achievement, %s! :)"] = true,
	["Congratulations on that achievement, %s!"] = true,
	["Cool achieve, %s!"] = true,
	["Dats an amazin' achieve, %s!"] = true,
	["Denver, the last dinosaur, saw your achieve and he danced on the floor!"] = true,
	["Do you chase waterfalls? rivers? lakes? That achievement has music written all over it!"] = true,
	["Doing well, keep it up, %s!"] = true,
	["Dude, %s, thats awesome!"] = true,
	["DUUUUUUUDE! Nice, %s!"] = true,
	["EJECTO CHEEVO CUZZZ!! nice! :D"] = true,
	["Epically glorious Achievement!"] = true,
	["Every time you get an achievement a dolphin jumps over a double rainbow!"] = true,
	["Every time you get an achievement a penguin wants to hug you!"] = true,
	["Every time you get an achievement a rainbow forms!"] = true,
	["Fantastic achievement, %s! from your friendly neighborhood guildmatet."] = true,
	["Glad to see another achievement :)"] = true,
	["Glad to see the achievement! nice one, %s!"] = true,
	["Go for the gold text, %s! The gold text is good ... the gold text is wise."] = true,
	["Gotta collect-em all!! ... no wait ... I mean well done!"] = true,
	["GRATZAMONDO!!"] = true,
	["GRATZAMONDO!! :D"] = true,
	["Great Achievement, %s! keep up the aweshumm :D"] = true,
	["Great achievement, %s!!!"] = true,
	["Happy Birth ... DOH ... I mean congratulations on your achievement, %s!"] = true,
	["Have 10 cookies for THAT achievement, %s!! Great Job!"] = true,
	["Have a cookie for THAT achievement, %s! Well earned!"] = true,
	["I do believe that you got a nice cheevo!"] = true,
	["I know of at least 100 people who got that achievement, %s, but none of them did it with as much grace as that! well done!!! :P"] = true,
	["I salute that achievement entirely!"] = true,
	["I say, %s, what a lovely achievement you got! Set it down over there with the rest of them.  Theres a good guildy. Congrats btw! :D"] = true,
	["If I had a rainbow, and that rainbow had kittens, and those kittens had rainbows of their own that had kittens, that'd be your achievement, %s!!"] = true,
	["If Illidan saw that he'd HAVE to admit that %s was prepared!"] = true,
	["If that achievement were any brighter it would sparkle in the sky, %s!"] = true,
	["If that were a trick shot it'd break the table for being so epic!"] = true,
	["If you achieve it, %s, Achievements will come! ... or baseball fields :/"] = true,
	["In all the lands of Azeroth, be it highest mountain or deepest sea, the rivers would always swell, the life they brought and the animals that were drawn to it, like achievements to %s it was excellent!"] = true,
	["Is it a bird!? is it a plane! NO its an achievement! But they're one and the same!!"] = true,
	["It's a great day for a great achievement such as that one!"] = true,
	["Let loose of your hatred, feel the warm embrace of achievements, %s ... aaahhhhhhh :D"] = true,
	["Like a rocket, that achievement soared, %s! Great one!"] = true,
	["Look at the sparkly achievement that just happened!!"] = true,
	["Magnifico, %s!"] = true,
	["Maximum Congratulations my fellow guildy!"] = true,
	["May all your mounts crowd around you in tribute for that single achievement alone, %s!"] = true,
	["May the grats be with you, %s!"] = true,
	["Nice achieve, %s!"] = true,
	["Nice achieve, %s, PARTY TIME! Excellent! *cue air guitar*"] = true,
	["Nice and clean, NICE ... and ... CLEAN ... achievement, %s!"] = true,
	["Nice one, %s!"] = true,
	["NICE!!"] = true,
	["Not even Deathwing would argue that achievement, %s! Congrats!"] = true,
	["oooooh nice achieve, %s! :)"] = true,
	["OOooooh, %s, nice achievement!! :)"] = true,
	["oooOOOOoooooh NICE, %s!"] = true,
	["Perfectly executed achievement, %s, top notch, well done!"] = true,
	["Plenty of fun to be had when getting those achievements, %s, we all should venture more into that side of things ... make a day of it even? :)"] = true,
	["Pukkachieve :D"] = true,
	["Some may hunt and some may stroll, some may encounter them as they roll, be sure to note, we don't care how, we're just glad there's another now! Gratz, %s!"] = true,
	["Splendid! Keep up the achievements, %s!"] = true,
	["That achievement is beaten only by marshmallows, coated in chocolate, and sprinkled with chocolate chips! ... but only just!"] = true,
	["That achievement was like a bright firework for all to see, %s!"] = true,
	["THAT ROCKS, %s ... great achievement!!"] = true,
	["Thats a nice achievement, %s, really, truly, very... well done! most impressed! :)"] = true,
	["Thats great, %s! Well done"] = true,
	["Thats plenty brilliant, %s! nice one!"] = true,
	["The achievement bus is coming, and everybodys jumping, stormwind to undercity, the grats are gettin busy ..."] = true,
	["The clarity of your achievement echoes through the lands, %s! Well done!"] = true,
	["The magnitude of your achievement will ring through the ages, %s ... congrats! :D"] = true,
	["The textual proof of your said accomplishment is acknowledged in this congratual fashion."] = true,
	["The wisps of Moonglade chanted %s's name as they got THAT achievement!"] = true,
	["This Grats brought to you by pink furry bunnies dancing in a circle and chanting %s's name for that epic achievement!"] = true,
	["This person likes your achievement. This person gives you grats!"] = true,
	["Throwing forward my greatest applause for that achievement, %s!"] = true,
	["Top achieve, %s!"] = true,
	["Up through the darkness the shadowy figure arose, it looked at you, %s ... it came ever closer! ... it shook your hand and congratulated you on that achievement. Well done!!"] = true,
	["We love achievements here, %s!"] = true,
	["We see you like achievements, %s. We know you like grats, so here is one for you now :D"] = true,
	["Well done on that one! :)"] = true,
	["Well done that one!"] = true,
	["Well done there, specific guild person!!"] = true,
	["Well thats certainly a great achievement, %s, well done!"] = true,
	["Well, that thar be a nice achievement you got there, %s!"] = true,
	["Wellius Dunnikus, %s!"] = true,
	["Who's the tank? ... uh I mean CONGRATULATIONS! ... whats the mage? ... I dont know ... HE'S THE PRIEST!"] = true,
	["Wibble, wobble, wibble, wobble, achievement on the plate! Congrats! :D"] = true,
	["WOOOHOOO!! well done that guildy!"] = true,
	["Wow such awesome, many Congrats!!"] = true,
	["YAY nice achieve, %s!"] = true,
	["You got an achievement, %s! ... showing today on front row! (anyone who got that reference deserves a cookie!!)"] = true,
	["You walk through the achievements, %s, with the majesty of an ocean liner cruising the waves"] = true,
	["Your accomplishment is acknowledged by this text stating it, %s! Nice one!"] = true,
	["Your achievement will resonate through time and space with grace, %s!"] = true,
	["Your efforts have not gone un-noticed, congratulations, %s! :D"] = true,
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
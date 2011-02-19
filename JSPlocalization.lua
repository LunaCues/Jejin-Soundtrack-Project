--[[
	localization.lua
	
	English localization for Jejin Soundtrack Project
--]]

local function defaultFunc(L, key)
 -- If this function was called, we have no localization for this key.
 -- We could complain loudly to allow localizers to see the error of their ways, 
 -- but, for now, just return the key as its own localization. 
 -- This allows you to avoid writing the default localization out explicitly.
	return key;
end
JSP_Zone_Locale = setmetatable({}, {__index=defaultFunc});
JSP_Boss_Locale = setmetatable({}, {__index=defaultFunc});

local Zone = JSP_Zone_Locale;
local Boss = JSP_Boss_Locale;

if GetLocale() == "enUS" then

-- Blackfathom Deeps
Zone["Instances/Blackfathom Deeps"] = "Instances/Blackfathom Deeps"
Zone["Instances/Blackfathom Deeps/Aku'mai's Lair"] = "Instances/Blackfathom Deeps/Aku'mai's Lair"
Zone["Instances/Blackfathom Deeps/Moonshrine Ruins"] = "Instances/Blackfathom Deeps/Moonshrine Ruins"
Zone["Instances/Blackfathom Deeps/Moonshrine Sanctum"] = "Instances/Blackfathom Deeps/Moonshrine Sanctum"
Zone["Instances/Blackfathom Deeps/The Forgotten Pool"] = "Instances/Blackfathom Deeps/The Forgotten Pool"
Zone["Instances/Blackfathom Deeps/The Pool of Ask'ar"] = "Instances/Blackfathom Deeps/The Pool of Ask'ar"

-- Deadmines
Zone["Instances/The Deadmines"] = "Instances/The Deadmines"
Zone["Instances/The Deadmines/Goblin Foundry"] = "Instances/The Deadmines/Goblin Foundry"
Zone["Instances/The Deadmines/Ironclad Cove"] = "Instances/The Deadmines/Ironclad Cove"
Zone["Instances/The Deadmines/Mast Room"] = "Instances/The Deadmines/Mast Room"

-- Dire Maul
Zone["Instances/Dire Maul"] = "Instances/Dire Maul"
Zone["Instances/Dire Maul/Capital Gardens"] = "Instances/Dire Maul/Capital Gardens"
Zone["Instances/Dire Maul/Court of the Highborne"] = "Instances/Dire Maul/Court of the Highborne"
Zone["Instances/Dire Maul/Gordok's Seat"] = "Instances/Dire Maul/Gordok's Seat"
Zone["Instances/Dire Maul/Halls of Destruction"] = "Instances/Dire Maul/Halls of Destruction"
Zone["Instances/Dire Maul/Prison of Immol'thar"] = "Instances/Dire Maul/Prison of Immol'thar"
Zone["Instances/Dire Maul/The Conservatory"] = "Instances/Dire Maul/The Conservatory"
Zone["Instances/Dire Maul/The Shrine of Eldretharr"] = "Instances/Dire Maul/The Shrine of Eldretharr"
Zone["Instances/Dire Maul/Warpwood Quarter"] = "Instances/Dire Maul/Warpwood Quarter"

-- Gnomeregan
Zone["Instances/Gnomeregan"] = "Instances/Gnomeregan"
Zone["Eastern Kingdoms/Dun Morogh/Gnomeregan"] = "Eastern Kingdoms/Dun Morogh/Gnomeregan"

-- Maraudon
Zone["Instances/Maraudon"] = "Instances/Maraudon"
Zone["Instances/Maraudon/Earth Song Falls"] = "Instances/Maraudon/Earth Song Falls"
Zone["Instances/Maraudon/Foulspore Cavern"] = "Instances/Maraudon/Foulspore Cavern"
Zone["Instances/Maraudon/Poison Falls"] = "Instances/Maraudon/Poison Falls"
Zone["Instances/Maraudon/The Noxious Hollow"] = "Instances/Maraudon/The Noxious Hollow"
Zone["Instances/Maraudon/The Wicked Grotto"] = "Instances/Maraudon/The Wicked Grotto"
Zone["Instances/Maraudon/Vyletongue Seat"] = "Instances/Maraudon/Vyletongue Seat"
Zone["Instances/Maraudon/Zaetar's Grave"] = "Instances/Maraudon/Zaetar's Grave"

-- Ragefire Chasm
Zone["Instances/Ragefire Chasm"] = "Instances/Ragefire Chasm"

-- Scarlet Monastery
Zone["Instances/Scarlet Monastery"] = "Instances/Scarlet Monastery" 
Zone["Instances/Scarlet Monastery/Athenaeum"] = "Instances/Scarlet Monastery/Athenaeum"
Zone["Instances/Scarlet Monastery/Chamber of Atonement"] = "Instances/Scarlet Monastery/Chamber of Atonement"
Zone["Instances/Scarlet Monastery/Chapel Gardens"] = "Instances/Scarlet Monastery/Chapel Gardens"
Zone["Instances/Scarlet Monastery/Crusader's Armory"] = "Instances/Scarlet Monastery/Crusader's Armory"
Zone["Instances/Scarlet Monastery/Crusader's Chapel"] = "Instances/Scarlet Monastery/Crusader's Chapel"
Zone["Instances/Scarlet Monastery/Footman's Armory"] = "Instances/Scarlet Monastery/Footman's Armory"
Zone["Instances/Scarlet Monastery/Forlorn Cloister"] = "Instances/Scarlet Monastery/Forlorn Cloister"
Zone["Instances/Scarlet Monastery/Gallery of Treasures"] = "Instances/Scarlet Monastery/Gallery of Treasures"
Zone["Instances/Scarlet Monastery/Hall of Champions"] = "Instances/Scarlet Monastery/Hall of Champions"
Zone["Instances/Scarlet Monastery/Honor's Tomb"] = "Instances/Scarlet Monastery/Honor's Tomb"
Zone["Instances/Scarlet Monastery/Training Grounds"] = "Instances/Scarlet Monastery/Training Grounds"

-- Shadowfang Keep
Zone["Instances/Shadowfang Keep"] = "Instances/Shadowfang Keep"

-- Stockades
Zone["Instances/The Stockade/Stormwind Stockade"] = "Instances/The Stockade/Stormwind Stockade"

-- Uldaman
Zone["Instances/Uldaman"] = "Instances/Uldaman"
Zone["Instances/Uldaman/Dig Two"] = "Instances/Uldaman/Dig Two"
Zone["Instances/Uldaman/Hall of the Crafters"] = "Instances/Uldaman/Hall of the Crafters"
Zone["Instances/Uldaman/Hall of the Keepers"] = "Instances/Uldaman/Hall of the Keepers"
Zone["Instances/Uldaman/Khaz'goroth's Seat"] = "Instances/Uldaman/Khaz'goroth's Seat"
Zone["Instances/Uldaman/Map Chamber"] = "Instances/Uldaman/Map Chamber"
Zone["Instances/Uldaman/Temple Hall"] = "Instances/Uldaman/Temple Hall"

-- Wailling Caverns
Zone["Instances/Wailing Caverns"] = "Instances/Wailing Caverns"
Zone["Instances/Wailing Caverns/Dreamer's Rock"] = "Instances/Wailing Caverns/Dreamer's Rock"
Zone["Instances/Wailing Caverns/Cavern of Mists"] = "Instances/Wailing Caverns/Cavern of Mists"
Zone["Instances/Wailing Caverns/Crag of the Everliving"] = "Instances/Wailing Caverns/Crag of the Everliving"

-- Zul'Farrak
Zone["Instances/Zul'Farrak"] = "Instances/Zul'Farrak"

-- BOSSES
Boss["Ghamoo-Ra"] = "Ghamoo-Ra"
Boss["Twilight Lord Kelris"] = "Twilight Lord Kelris"
Boss["Old Serra'kis"] = "Old Serra'kis"

end
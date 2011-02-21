--[[
	JejinSoundtrackProject.lua

	Main functions for Jejin Soundtrack Project
]]

local projectName = "JejinSoundtrackProject"
local projectLoaded = false
local Zone = JSP_Zone_Locale;
local Boss = JSP_Boss_Locale;
local locals = {"enUS"}

--[[
local function debug(msg)
	print(msg)
end
--]]


------------------------
-- Tables for JSP
------------------------

--	Events table for project
local JSP_Events = {

	["Zone"] = {

		[Zone["Instances/Blackfathom Deeps"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Blackfathom Deeps 1 Mp3", -- [1]
			},
			["lastTrackIndex"] = 1,
			["random"] = true,
			["priority"] = 2,
			["expanded"] = false,
			["continuous"] = true,
		},
		[Zone["Instances/Blackfathom Deeps/The Forgotten Pool"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Blackfathom Deeps 2 Mp3", -- [1]
			},
			["lastTrackIndex"] = 1,
			["random"] = true,
			["priority"] = 3,
			["expanded"] = false,
			["continuous"] = true,
		},
		[Zone["Instances/Blackfathom Deeps/Aku'mai's Lair"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Blackfathom Deeps 6 Mp3", -- [1]
			},
			["lastTrackIndex"] = 1,
			["random"] = true,
			["priority"] = 3,
			["expanded"] = false,
			["continuous"] = true,
		},
		[Zone["Instances/Blackfathom Deeps/The Pool of Ask'ar"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Blackfathom Deeps 2 Mp3", -- [1]
			},
			["lastTrackIndex"] = 1,
			["random"] = true,
			["priority"] = 3,
			["expanded"] = false,
			["continuous"] = true,
		},
		[Zone["Instances/Blackfathom Deeps/Moonshrine Ruins"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Blackfathom Deeps 4 Mp3", -- [1]
			},
			["lastTrackIndex"] = 1,
			["random"] = true,
			["priority"] = 3,
			["expanded"] = false,
			["continuous"] = true,
		},
		[Zone["Instances/Blackfathom Deeps/Moonshrine Sanctum"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Blackfathom Deeps 5 Mp3", -- [1]
			},
			["lastTrackIndex"] = 1,
			["random"] = true,
			["priority"] = 3,
			["expanded"] = true,
			["continuous"] = true,
		},

		[Zone["Instances/The Deadmines"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\The Deadmines 1 Mp3", -- [1]
			},
			["lastTrackIndex"] = 1,
			["random"] = true,
			["priority"] = 2,
			["expanded"] = false,
			["continuous"] = true,
		},
		[Zone["Instances/The Deadmines/Mast Room"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\The Deamines 2 Mp3", -- [1]
			},
			["lastTrackIndex"] = 1,
			["random"] = true,
			["priority"] = 3,
			["expanded"] = true,
			["continuous"] = true,
		},
		[Zone["Instances/The Deadmines/Goblin Foundry"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\The Deamines 3 Mp3", -- [1]
			},
			["lastTrackIndex"] = 1,
			["random"] = true,
			["priority"] = 3,
			["expanded"] = true,
			["continuous"] = true,
		},
		[Zone["Instances/The Deadmines/Ironclad Cove"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\The Deadmines 4 Mp3", -- [1]
			},
			["lastTrackIndex"] = 1,
			["random"] = true,
			["priority"] = 3,
			["expanded"] = true,
			["continuous"] = true,
		},

		[Zone["Instances/Dire Maul"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Dire Maul 1 Mp3", -- [1]
			},
			["priority"] = 2,
			["expanded"] = false,
			["lastTrackIndex"] = 1,
			["random"] = true,
			["continuous"] = true,
		},
		[Zone["Instances/Dire Maul/Gordok's Seat"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Dire Maul 5 Mp3", -- [1]
			},
			["lastTrackIndex"] = 1,
			["random"] = true,
			["priority"] = 3,
			["expanded"] = false,
			["continuous"] = true,
		},
		[Zone["Instances/Dire Maul/Warpwood Quarter"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Dire Maul 2 Mp3", -- [1]
			},
			["priority"] = 3,
			["expanded"] = true,
			["lastTrackIndex"] = 1,
			["random"] = true,
			["continuous"] = true,
		},
		[Zone["Instances/Dire Maul/The Shrine of Eldretharr"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Dire Maul 3 Mp3", -- [1]
			},
			["priority"] = 3,
			["expanded"] = false,
			["lastTrackIndex"] = 1,
			["random"] = true,
			["continuous"] = true,
		},
		[Zone["Instances/Dire Maul/Capital Gardens"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Dire Maul 2 Mp3", -- [1]
			},
			["priority"] = 3,
			["expanded"] = false,
			["lastTrackIndex"] = 1,
			["random"] = true,
			["continuous"] = true,
		},
		[Zone["Instances/Dire Maul/Court of the Highborne"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Dire Maul 2 Mp3", -- [1]
			},
			["priority"] = 3,
			["expanded"] = false,
			["lastTrackIndex"] = 1,
			["random"] = true,
			["continuous"] = true,
		},
		[Zone["Instances/Dire Maul/Prison of Immol'thar"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Dire Maul 4 Mp3", -- [1]
			},
			["priority"] = 3,
			["expanded"] = false,
			["lastTrackIndex"] = 1,
			["random"] = true,
			["continuous"] = true,
		},
		[Zone["Instances/Dire Maul/Halls of Destruction"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Dire Maul 4 Mp3", -- [1]
			},
			["lastTrackIndex"] = 1,
			["random"] = true,
			["priority"] = 3,
			["expanded"] = false,
			["continuous"] = true,
		},
		[Zone["Instances/Dire Maul/The Conservatory"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Dire Maul 2 Mp3", -- [1]
			},
			["priority"] = 3,
			["expanded"] = true,
			["lastTrackIndex"] = 1,
			["random"] = true,
			["continuous"] = true,
		},
		
		[Zone["Instances/Gnomeregan"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Gnomeregan 1 Mp3", -- [1]
				"JejinSoundtrackProject\\Gnomeregan 2 Mp3", -- [2]
				"JejinSoundtrackProject\\Gnomeregan 3 Mp3", -- [3]
			},
			["priority"] = 2,
			["expanded"] = false,
			["lastTrackIndex"] = 3,
			["random"] = true,
			["continuous"] = true,
		},
		
		[Zone["Eastern Kingdoms/Dun Morogh/Gnomeregan"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Gnomeregan 1 Mp3", -- [1]
				"JejinSoundtrackProject\\Gnomeregan 2 Mp3", -- [2]
				"JejinSoundtrackProject\\Gnomeregan 3 Mp3", -- [3]
			},
			["priority"] = 3,
			["lastTrackIndex"] = 0,
			["random"] = true,
			["continuous"] = true,
		},

		[Zone["Instances/Maraudon"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Maraudon 4 Mp3", -- [1]
				"JejinSoundtrackProject\\Maraudon 3 Mp3", -- [2]
			},
			["lastTrackIndex"] = 2,
			["random"] = true,
			["priority"] = 2,
			["expanded"] = false,
			["continuous"] = true,
		},
		[Zone["Instances/Maraudon/The Noxious Hollow"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Maraudon 2 Mp3", -- [1]
			},
			["lastTrackIndex"] = 1,
			["random"] = true,
			["priority"] = 3,
			["expanded"] = true,
			["continuous"] = true,
		},
		[Zone["Instances/Maraudon/The Wicked Grotto"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Maraudon 3 Mp3", -- [1]
			},
			["lastTrackIndex"] = 1,
			["random"] = true,
			["priority"] = 3,
			["expanded"] = true,
			["continuous"] = true,
		},
		[Zone["Instances/Maraudon/Zaetar's Grave"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Maraudon 6 Mp3", -- [1]
			},
			["lastTrackIndex"] = 1,
			["random"] = true,
			["priority"] = 3,
			["expanded"] = true,
			["continuous"] = true,
		},
		[Zone["Instances/Maraudon/Vyletongue Seat"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Maraudon 4 Mp3", -- [1]
			},
			["lastTrackIndex"] = 1,
			["random"] = true,
			["priority"] = 3,
			["expanded"] = true,
			["continuous"] = true,
		},
		[Zone["Instances/Maraudon/Poison Falls"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Maraudon 4 Mp3", -- [1]
			},
			["lastTrackIndex"] = 1,
			["random"] = true,
			["priority"] = 3,
			["expanded"] = true,
			["continuous"] = true,
		},
		[Zone["Instances/Maraudon/Earth Song Falls"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Maraudon 5 Mp3", -- [1]
			},
			["lastTrackIndex"] = 1,
			["random"] = true,
			["priority"] = 3,
			["expanded"] = false,
			["continuous"] = true,
		},
		[Zone["Instances/Maraudon/Foulspore Cavern"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Maraudon 1 Mp3", -- [1]
			},
			["lastTrackIndex"] = 1,
			["random"] = true,
			["priority"] = 3,
			["expanded"] = true,
			["continuous"] = true,
		},

		[Zone["Instances/Ragefire Chasm"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Ragefire Chasm 1 Mp3", -- [1]
			},
			["lastTrackIndex"] = 1,
			["random"] = true,
			["priority"] = 2,
			["expanded"] = false,
			["continuous"] = true,
		},

		[Zone["Instances/Scarlet Monastery"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Scarlet Monastery 3 Mp3", -- [1]
				"JejinSoundtrackProject\\Scarlet Monastery 8 Mp3", -- [2]
			},
			["lastTrackIndex"] = 2,
			["random"] = true,
			["priority"] = 2,
			["expanded"] = false,
			["continuous"] = true,
		},
		[Zone["Instances/Scarlet Monastery/Gallery of Treasures"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Scarlet Monastery 4 Mp3", -- [1]
				"JejinSoundtrackProject\\Scarlet Monastery 10 Mp3", -- [2]
			},
			["priority"] = 3,
			["expanded"] = true,
			["lastTrackIndex"] = 1,
			["random"] = true,
			["continuous"] = true,
		},
		[Zone["Instances/Scarlet Monastery/Honor's Tomb"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Scarlet Monastery 2 Mp3", -- [1]
			},
			["priority"] = 3,
			["expanded"] = true,
			["lastTrackIndex"] = 1,
			["random"] = true,
			["continuous"] = true,
		},
		[Zone["Instances/Scarlet Monastery/Crusader's Chapel"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Scarlet Monastery 9 Mp3", -- [1]
			},
			["lastTrackIndex"] = 1,
			["random"] = true,
			["priority"] = 3,
			["expanded"] = true,
			["continuous"] = true,
		},
		[Zone["Instances/Scarlet Monastery/Footman's Armory"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Scarlet Monastery 6 Mp3", -- [1]
			},
			["priority"] = 3,
			["expanded"] = true,
			["lastTrackIndex"] = 1,
			["random"] = true,
			["continuous"] = true,
		},
		[Zone["Instances/Scarlet Monastery/Training Grounds"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Scarlet Monastery 5 Mp3", -- [1]
			},
			["priority"] = 3,
			["expanded"] = true,
			["lastTrackIndex"] = 1,
			["random"] = true,
			["continuous"] = true,
		},
		[Zone["Instances/Scarlet Monastery/Chamber of Atonement"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Scarlet Monastery 1 Mp3", -- [1]
			},
			["lastTrackIndex"] = 1,
			["random"] = true,
			["priority"] = 3,
			["expanded"] = true,
			["continuous"] = true,
		},
		[Zone["Instances/Scarlet Monastery/Hall of Champions"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Scarlet Monastery 7 Mp3", -- [1]
			},
			["priority"] = 3,
			["expanded"] = true,
			["lastTrackIndex"] = 1,
			["random"] = true,
			["continuous"] = true,
		},
		[Zone["Instances/Scarlet Monastery/Forlorn Cloister"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Scarlet Monastery 2 Mp3", -- [1]
			},
			["lastTrackIndex"] = 1,
			["random"] = true,
			["priority"] = 3,
			["expanded"] = false,
			["continuous"] = true,
		},
		[Zone["Instances/Scarlet Monastery/Athenaeum"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Scarlet Monastery 4 Mp3", -- [1]
				"JejinSoundtrackProject\\Scarlet Monastery 10 Mp3", -- [2]
			},
			["priority"] = 3,
			["expanded"] = false,
			["lastTrackIndex"] = 1,
			["random"] = true,
			["continuous"] = true,
		},
		[Zone["Instances/Scarlet Monastery/Crusader's Armory"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Scarlet Monastery 7 Mp3", -- [1]
			},
			["priority"] = 3,
			["expanded"] = true,
			["lastTrackIndex"] = 1,
			["random"] = true,
			["continuous"] = true,
		},
		[Zone["Instances/Scarlet Monastery/Chapel Gardens"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Scarlet Monastery 2 Mp3", -- [1]
				"JejinSoundtrackProject\\Scarlet Monastery 1 Mp3", -- [2]
			},
			["lastTrackIndex"] = 2,
			["random"] = true,
			["priority"] = 3,
			["expanded"] = true,
			["continuous"] = true,
		},

		[Zone["Instances/Shadowfang Keep"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Shadowfang Keep 1 Mp3", -- [1]
				"JejinSoundtrackProject\\Shadowfang Keep 2 Mp3", -- [2]
			},
			["lastTrackIndex"] = 2,
			["random"] = true,
			["priority"] = 2,
			["expanded"] = false,
			["continuous"] = true,
		},

		[Zone["Instances/The Stockade/Stormwind Stockade"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Stockades 1 Mp3", -- [1]
				"JejinSoundtrackProject\\Stockades 2 Mp3", -- [2]
				"JejinSoundtrackProject\\Stockades 3 Mp3", -- [3]
			},
			["lastTrackIndex"] = 3,
			["random"] = true,
			["priority"] = 3,
			["expanded"] = true,
			["continuous"] = true,
		},

		[Zone["Instances/Uldaman"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Uldaman 1 Mp3", -- [1]
			},
			["lastTrackIndex"] = 1,
			["random"] = true,
			["priority"] = 2,
			["expanded"] = false,
			["continuous"] = true,
		},
		[Zone["Instances/Uldaman/Dig Two"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Uldaman 2 Mp3", -- [1]
			},
			["lastTrackIndex"] = 1,
			["random"] = true,
			["priority"] = 3,
			["expanded"] = false,
			["continuous"] = true,
		},
		[Zone["Instances/Uldaman/Hall of the Keepers"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Uldaman 4 Mp3", -- [1]
				"JejinSoundtrackProject\\Uldaman 3 Mp3", -- [2]
			},
			["lastTrackIndex"] = 1,
			["random"] = true,
			["priority"] = 3,
			["expanded"] = false,
			["continuous"] = true,
		},
		[Zone["Instances/Uldaman/Khaz'goroth's Seat"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Uldaman 5 Mp3", -- [1]
			},
			["lastTrackIndex"] = 1,
			["random"] = true,
			["priority"] = 3,
			["expanded"] = false,
			["continuous"] = true,
		},
		[Zone["Instances/Uldaman/Map Chamber"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Uldaman 2 Mp3", -- [1]
			},
			["lastTrackIndex"] = 1,
			["random"] = true,
			["priority"] = 3,
			["expanded"] = false,
			["continuous"] = true,
		},
		[Zone["Instances/Uldaman/Temple Hall"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Uldaman 3 Mp3", -- [1]
			},
			["lastTrackIndex"] = 1,
			["random"] = true,
			["priority"] = 3,
			["expanded"] = false,
			["continuous"] = true,
		},
		[Zone["Instances/Uldaman/Hall of the Crafters"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Uldaman 3 Mp3", -- [1]
				"JejinSoundtrackProject\\Uldaman 4 Mp3", -- [2]
			},
			["lastTrackIndex"] = 1,
			["random"] = true,
			["priority"] = 3,
			["expanded"] = true,
			["continuous"] = true,
		},
		
		[Zone["Instances/Wailing Caverns"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Wailing Caverns 2 Mp3", -- [1]
			},
			["lastTrackIndex"] = 1,
			["random"] = true,
			["priority"] = 2,
			["expanded"] = false,
			["continuous"] = true,
		},
		[Zone["Instances/Wailing Caverns/Crag of the Everliving"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Wailing Caverns 1 Mp3", -- [1]
				"JejinSoundtrackProject\\Wailing Caverns 3 Mp3", -- [2]
			},
			["lastTrackIndex"] = 1,
			["random"] = true,
			["priority"] = 3,
			["expanded"] = false,
			["continuous"] = true,
		},
		[Zone["Instances/Wailing Caverns/Cavern of Mists"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Wailing Caverns 3 Mp3", -- [1]
			},
			["lastTrackIndex"] = 1,
			["random"] = true,
			["priority"] = 3,
			["expanded"] = true,
			["continuous"] = true,
		},
		[Zone["Instances/Wailing Caverns/Dreamer's Rock"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Wailing Caverns 3 Mp3", -- [1]
			},
			["lastTrackIndex"] = 1,
			["random"] = true,
			["priority"] = 3,
			["expanded"] = true,
			["continuous"] = true,
		},

		[Zone["Instances/Zul'Farrak"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Zul'Farrak Mp3 1", -- [1]
				"JejinSoundtrackProject\\Zul'Farrak Mp3 2", -- [2]
			},
			["priority"] = 2,
			["expanded"] = false,
			["lastTrackIndex"] = 1,
			["random"] = true,
			["continuous"] = true,
		},

	},
	
	["Boss"] = {
		[Boss["Ghamoo-Ra"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Blackfathom Deeps 3 Mp3", -- [1]
			},
			["lastTrackIndex"] = 1,
			["random"] = true,
			["priority"] = 12,
			["expanded"] = true,
			["continuous"] = true,
		},
		[Boss["Twilight Lord Kelris"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Blackfathom Deeps 7 Mp3", -- [1]
			},
			["lastTrackIndex"] = 1,
			["random"] = true,
			["priority"] = 12,
			["expanded"] = false,
			["continuous"] = true,
		},
		[Boss["Old Serra'kis"]] = {
			["tracks"] = {
				"JejinSoundtrackProject\\Blackfathom Deeps 3 Mp3", -- [1]
			},
			["priority"] = 12,
			["lastTrackIndex"] = 1,
			["random"] = true,
			["continuous"] = true,
		},
	},
}


-- Load tracks for project
local function JSP_LoadTracks()
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\Blackfathom Deeps 1 Mp3", 366, "Blackfathom Deeps 1 Mp3", "Nicholas Potter", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\Blackfathom Deeps 2 Mp3", 167, "Blackfathom Deeps 2 Mp3", "Nicholas Potter", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\Blackfathom Deeps 3 Mp3", 59, "Blackfathom Deeps 3 Mp3", "Nicholas Potter", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\Blackfathom Deeps 4 Mp3", 292, "Blackfathom Deeps 4 Mp3", "Nicholas Potter/Aimee Bouchard", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\Blackfathom Deeps 5 Mp3", 119, "Blackfathom Deeps 5 Mp3", "Nicholas Potter", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\Blackfathom Deeps 6 Mp3", 120, "Blackfathom Deeps 6 Mp3", "Nicholas Potter", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\Blackfathom Deeps 7 Mp3", 56, "Twilight Lord Kelris", "Nicholas Potter", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\Dire Maul 1 Mp3", 413, "Dire Maul 1 Mp3", "Nicholas Potter", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\Dire Maul 2 Mp3", 178, "Dire Maul 2 Mp3", "Nicholas Potter", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\Dire Maul 3 Mp3", 235, "Dire Maul The Shine of Eldrethar 1", "Nicholas Potter", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\Dire Maul 4 Mp3", 82, "Dire Maul 4 Mp3", "Nicholas Potter", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\Dire Maul 5 Mp3", 144, "Dire Maul 5 Mp3", "Nicholas Potter", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\Gnomeregan 1 Mp3", 304, "Gnomeregan 1 Mp3", "Nicholas Potter", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\Gnomeregan 2 Mp3", 330, "Gnomeregan 2 Mp3", "Nicholas Potter", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\Gnomeregan 3 Mp3", 228, "Gnomeregan 3 Mp3", "Nicholas Potter", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\Maraudon 1 Mp3", 287, "Maraudon 1 Mp3", "Nicholas Potter", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\Maraudon 2 Mp3", 121, "Maraudon 2 Mp3", "Nicholas Potter", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\Maraudon 3 Mp3", 384, "Maraudon 3 Mp3", "Nicholas Potter", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\Maraudon 4 Mp3", 335, "Maraudon 4 Mp3", "Nicholas Potter", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\Maraudon 5 Mp3", 92, "Maraudon 5 Mp3", "Nicholas Potter", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\Maraudon 6 Mp3", 323, "Maraudon 6 Mp3", "Nicholas Potter", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\Ragefire Chasm 1 Mp3", 415, "None", "Nicholas Potter/Sam Pierce", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\Scarlet Monastery 1 Mp3", 85, "Scarlet Monastery 1 Mp3", "Nicholas Potter", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\Scarlet Monastery 10 Mp3", 156, "Scarlet Monastery 10 Mp3", "Nicholas Potter", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\Scarlet Monastery 2 Mp3", 251, "Scarlet Monastery 2 Mp3", "Nicholas Potter", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\Scarlet Monastery 3 Mp3", 102, "Scarlet Monastery 3 Mp3", "Nicholas Potter", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\Scarlet Monastery 4 Mp3", 244, "Scarlet Monastery 4a Mp3", "Nicholas Potter", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\Scarlet Monastery 5 Mp3", 86, "Scarlet Monastery 5 Mp3", "Nicholas Potter", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\Scarlet Monastery 6 Mp3", 86, "Scarlet Monastery 6 Mp3", "Nicholas Potter", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\Scarlet Monastery 7 Mp3", 66, "Scarlet Monastery 7 Mp3", "Nicholas Potter", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\Scarlet Monastery 8 Mp3", 187, "Scarlet Monastery 8 Mp3", "Nicholas Potter", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\Scarlet Monastery 9 Mp3", 263, "Scarlet Monastery 9 Mp3", "Nicholas Potter", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\Shadowfang Keep 1 Mp3", 283, "Shadowfang Keep 1 Mp3", "Nicholas Potter", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\Shadowfang Keep 2 Mp3", 265, "Shadowfang Keep 2 Mp3", "Nicholas Potter", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\Stockades 1 Mp3", 184, "Stockades 1 Mp3", "Nicholas Potter", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\Stockades 2 Mp3", 162, "Stockades 2 Mp3", "Nicholas Potter", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\Stockades 3 Mp3", 88, "Stockades 3 Mp3", "Nicholas Potter", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\The Deadmines 1 Mp3", 167, "The Deadmines general 1 redux", "Nicholas Potter", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\The Deadmines 4 Mp3", 442, "The Deadmines Ironclad Cove 1 redo", "Nicholas Potter", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\The Deamines 2 Mp3", 201, "The Deamines Mast Room 1 redo", "Nicholas Potter", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\The Deamines 3 Mp3", 108, "The Deadmines Goblin Foundry 1 redo", "Nicholas Potter", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\Uldaman 1 Mp3", 190, "Uldaman 1 Mp3", "Nicholas Potter", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\Uldaman 2 Mp3", 137, "Uldaman 2 Mp3", "Nicholas Potter", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\Uldaman 3 Mp3", 183, "Uldaman 3 Mp3", "Nicholas Potter", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\Uldaman 4 Mp3", 162, "Uldaman 4 Mp3", "Nicholas Potter", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\Uldaman 5 Mp3", 175, "Uldaman 5 Mp3", "Nicholas Potter", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\Wailing Caverns 1 Mp3", 111, "Wailing Caverns 1 Mp3", "Nicholas Potter/Aimee Bouchard", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\Wailing Caverns 2 Mp3", 203, "Wailing Caverns 2 Mp3", "Nicholas Potter/Aimee Bouchard", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\Wailing Caverns 3 Mp3", 100, "Wailing Caverns 3 Mp3", "Nicholas Potter", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\Zul\'Farrak Mp3 1", 210, "Zul\'Farrak Mp3 1", "Nicholas Potter", "Warcraft Soundtrack Project");
   Soundtrack_Library_AddProjectTrack("JejinSoundtrackProject\\Zul\'Farrak Mp3 2", 178, "Zul\'Farrak Mp3 2", "Nicholas Potter", "Warcraft Soundtrack Project");
end



-----------------------------------
-- OnUpdate, OnEvent, OnLoad
-----------------------------------


function JejinSoundtrackProject_OnUpdate(frame, elapsed)
--[[
	if not projectLoaded and not SoundtrackProject_CheckIfProjectLoaded("JejinSoundtrackProject") then
		print("JSP: Attempting to load JSP to SoundtrackProject and Soundtrack")
		SoundtrackProject_InsertProject("JejinSoundtrackProject", JSP_Events, locals);
		JSP_LoadTracks()
		projectLoaded = true
	end
	--]]
end

function JejinSoundtrackProject_OnEvent(frame, event, ...)
	--debug("JSP_OnEvent")
	if event == "VARIABLES_LOADED" then
		--print("JSP: loading project to SoundtrackProject")
		SoundtrackProject_InsertProject("JejinSoundtrackProject", JSP_Events, locals);
		--print("JSP: loading tracks to Soundtrack")
		JSP_LoadTracks()
		projectLoaded = true
	end
end

function JejinSoundtrackProject_OnLoad(frame)
	--debug("JSP_OnLoad")
	frame:RegisterEvent("VARIABLES_LOADED");
end

state("hitman2", "v1.02")
{
	byte Load : 0x02AB1E8, 0x8;
	byte Start : 0x02A907C, 0x8;
	short AllLevels : 0x0141528, 0x0;
	int EndCutscene : "RenderD3D.dll", 0x000F884, 0x1DC;
}

state("hitman2", "v1.0")
{
	byte Load : 0x02A35E0, 0x8;
	byte Start : 0x02A1474, 0x8;
	short AllLevels : 0x013F858, 0x0;
	int EndCutscene : "RenderD3D.dll", 0x000EEB4, 0x1DC;
}

startup
{
    settings.Add("am", true, "All Levels");
    settings.SetToolTip("am", "Choose which levels to split after");
	
	settings.Add("level1", true, "Anathema", "am");
	settings.Add("level2", true, "St.Petersburg Stakeout", "am");
	settings.Add("level3", true, "Kirov Park Meeting", "am");
	settings.Add("level4", true, "Tubeway Torpedo", "am");
	settings.Add("level5", true, "Invitation to a Party", "am");
	settings.Add("level6", true, "Tracking Hayamoto", "am");
	settings.Add("level7", true, "Hidden Valley", "am");
	settings.Add("level8", true, "At the Gates", "am");
	settings.Add("level9", true, "Shogun Showdown", "am");
	settings.Add("level10", true, "Basement Killing", "am");
	settings.Add("level11", true, "The Graveyard Shift", "am");
	settings.Add("level12", true, "The Jacuzzi Job", "am");
	settings.Add("level13", true, "Murder at the Bazaar", "am");
	settings.Add("level14", true, "The Motorcade Interception", "am");
	settings.Add("level15", true, "Tunnel Rat", "am");
	settings.Add("level16", true, "Temple City Ambush", "am");
	settings.Add("level17", true, "The Death of Hannelore", "am");
	settings.Add("level18", true, "Terminal Hospitality", "am");
	settings.Add("level19", true, "St. Petersburg Revisited", "am");
	settings.Add("level20", true, "Redemption at Gontranno", "am");
	
	settings.Add("option1", true, "Normal Start");
	settings.SetToolTip("option1", "Start timer at the beginning of Anathema");
	settings.Add("option2", false, "Any% Start");
	settings.SetToolTip("option2", "Start timer at the beginning of The Gontranno Sanctuary");
	settings.Add("option3", false, "Game Time");
	settings.SetToolTip("option3", "Enables loadless time, to see it switch livesplit comparison to Game Time");
}

init
{
	if (modules.First().ModuleMemorySize == 0x02EC000)
	version = "v1.02";
	else if (modules.First().ModuleMemorySize == 0x0367000)
	version = "v1.0";
}

start
{
	if (settings["option1"] && current.Start == 0 && old.Start == 60) return true;
	if (settings["option2"] && current.Start == 0 && old.Start == 12) return true;
}

split
{
	if (settings["level1"] && current.AllLevels == 212 && old.AllLevels == 457) return true;
	if (settings["level2"] && current.AllLevels == 209 && old.AllLevels == 457) return true;
	if (settings["level3"] && current.AllLevels == 299 && old.AllLevels == 426) return true;
	if (settings["level4"] && current.AllLevels == 212 && old.AllLevels == 461) return true;
	if (settings["level5"] && current.AllLevels == 132 && old.AllLevels == 457) return true;
	if (settings["level6"] && current.AllLevels == 228 && old.AllLevels == 412) return true;
	if (settings["level7"] && current.AllLevels == 424 && old.AllLevels == 428) return true;
	if (settings["level8"] && current.AllLevels == 160 && old.AllLevels == 424) return true;
	if (settings["level9"] && current.AllLevels == 260 && old.AllLevels == 457) return true;
	if (settings["level10"] && current.AllLevels == 425 && old.AllLevels == 428) return true;
	if (settings["level11"] && current.AllLevels == 432 && old.AllLevels == 425) return true;
	if (settings["level12"] && current.AllLevels == 146 && old.AllLevels == 457) return true;
	if (settings["level13"] && current.AllLevels == 107 && old.AllLevels == 409) return true;
	if (settings["level14"] && current.AllLevels == 146 && old.AllLevels == 434) return true;
	if (settings["level15"] && current.AllLevels == 172 && old.AllLevels == 457) return true;
	if (settings["level16"] && current.AllLevels == 260 && old.AllLevels == 402) return true;
	if (settings["level17"] && current.AllLevels == 240 && old.AllLevels == 417) return true;
	if (settings["level18"] && current.AllLevels == 200 && old.AllLevels == 457) return true;
	if (settings["level19"] && current.AllLevels == 409 && old.AllLevels == 421) return true;
	if (settings["level20"] && current.EndCutscene == 1063174144 && old.EndCutscene == 1036648448 && current.AllLevels == 409) return true;
}

isLoading
{
	return (settings["option3"] && current.Load == 0);
}
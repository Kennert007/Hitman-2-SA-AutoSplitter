state("hitman2", "V1.02")
{
	byte Load : 0x02AB1E8, 0x8;
	byte Start : 0x02A907C, 0x8;
	short AllLevels : 0x0141528, 0x0;
	int EndCutscene : "RenderD3D.dll", 0x000F884, 0x1DC;
}

state("hitman2", "V1.0")
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
	
	settings.Add("option1", true, "Anathema", "am");
	settings.Add("option2", true, "St.Petersburg Stakeout", "am");
	settings.Add("option3", true, "Kirov Park Meeting", "am");
	settings.Add("option4", true, "Tubeway Torpedo", "am");
	settings.Add("option5", true, "Invitation to a Party", "am");
	settings.Add("option6", true, "Tracking Hayamoto", "am");
	settings.Add("option7", true, "Hidden Valley", "am");
	settings.Add("option8", true, "At the Gates", "am");
	settings.Add("option9", true, "Shogun Showdown", "am");
	settings.Add("option10", true, "Basement Killing", "am");
	settings.Add("option11", true, "The Graveyard Shift", "am");
	settings.Add("option12", true, "The Jacuzzi Job", "am");
	settings.Add("option13", true, "Murder at the Bazaar", "am");
	settings.Add("option14", true, "The Motorcade Interception", "am");
	settings.Add("option15", true, "Tunnel Rat", "am");
	settings.Add("option16", true, "Temple City Ambush", "am");
	settings.Add("option17", true, "The Death of Hannelore", "am");
	settings.Add("option18", true, "Terminal Hospitality", "am");
	settings.Add("option19", true, "St. Petersburg Revisited", "am");
	settings.Add("option20", true, "Redemption at Gontranno", "am");
	
	settings.Add("option21", true, "Normal Start");
	settings.SetToolTip("option21", "Start timer at the beginning of Anathema");
	settings.Add("option22", false, "Any% Start");
	settings.SetToolTip("option22", "Start timer at the beginning of The Gontranno Sanctuary");
	settings.Add("option23", false, "Game Time");
	settings.SetToolTip("option23", "Enables game time, to see it switch livesplit comparison to Game Time");
	settings.Add("option24", true, "V1.02");
	settings.SetToolTip("option24", "Choose correct game version, disable the incorrect one");
	settings.Add("option25", false, "V1.0");
	settings.SetToolTip("option25", "Choose correct game version, disable the incorrect one");
}

init
{
	if(settings["option24"])
	{
		version = "V1.02";
	}
	if(settings["option25"])
	{
		version = "V1.0";
	}
}

start
{
	if (settings["option21"] && current.Start == 0 && old.Start == 60)
	{
		return true;
	}
	if (settings["option22"] && current.Start == 0 && old.Start == 12)
	{
		return true;
	}
}

split
{
	if (settings["option1"] && current.AllLevels == 212 && old.AllLevels == 457)
	{
		return true;
	}
	if (settings["option2"] && current.AllLevels == 209 && old.AllLevels == 457)
	{
		return true;
	}
	if (settings["option3"] && current.AllLevels == 299 && old.AllLevels == 426)
	{
		return true;
	}
	if (settings["option4"] && current.AllLevels == 212 && old.AllLevels == 461)
	{
		return true;
	}
	if (settings["option5"] && current.AllLevels == 132 && old.AllLevels == 457)
	{
		return true;
	}
	if (settings["option6"] && current.AllLevels == 228 && old.AllLevels == 412)
	{
		return true;
	}
	if (settings["option7"] && current.AllLevels == 424 && old.AllLevels == 428)
	{
		return true;
	}
	if (settings["option8"] && current.AllLevels == 160 && old.AllLevels == 424)
	{
		return true;
	}
	if (settings["option9"] && current.AllLevels == 260 && old.AllLevels == 457)
	{
		return true;
	}
	if (settings["option10"] && current.AllLevels == 425 && old.AllLevels == 428)
	{
		return true;
	}
	if (settings["option11"] && current.AllLevels == 432 && old.AllLevels == 425)
	{
		return true;
	}
	if (settings["option12"] && current.AllLevels == 146 && old.AllLevels == 457)
	{
		return true;
	}
	if (settings["option13"] && current.AllLevels == 107 && old.AllLevels == 409)
	{
		return true;
	}
	if (settings["option14"] && current.AllLevels == 146 && old.AllLevels == 434)
	{
		return true;
	}
	if (settings["option15"] && current.AllLevels == 172 && old.AllLevels == 457)
	{
		return true;
	}
	if (settings["option16"] && current.AllLevels == 260 && old.AllLevels == 402)
	{
		return true;
	}
	if (settings["option17"] && current.AllLevels == 240 && old.AllLevels == 417)
	{
		return true;
	}
	if (settings["option18"] && current.AllLevels == 200 && old.AllLevels == 457)
	{
		return true;
	}
	if (settings["option19"] && current.AllLevels == 409 && old.AllLevels == 421)
	{
		return true;
	}
	if (settings["option20"] && current.EndCutscene == 1063174144 && old.EndCutscene == 1036648448 && current.AllLevels == 409)
	{
		return true;
	}
}

isLoading
{
	return (settings["option23"] && current.Load == 0);
}
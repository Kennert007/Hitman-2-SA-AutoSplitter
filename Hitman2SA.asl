state("hitman2", "v1.02")
{
	int IsAllLevels : 0x0052144, 0x380, 0x8, 0x314;
	int IsUsedForEndCutscene : 0x003E9C0, 0x344;
	int IsLoadScreen : 0x02AE234, 0xD8;
}

startup
{
	settings.Add("option1", true, "Anathema");
	settings.SetToolTip("option1", "Split at the end of Anathema");
	settings.Add("option2", true, "St.Petersburg Stakeout");
	settings.SetToolTip("option2", "Split at the end of St.Petersburg Stakeout");
	settings.Add("option3", true, "Kirov Park Meeting");
	settings.SetToolTip("option3", "Split at the end of Kirov Park Meeting");
	settings.Add("option4", true, "Tubeway Torpedo");
	settings.SetToolTip("option4", "Split at the end of Tubeway Torpedo");
	settings.Add("option5", true, "Invitation to a Party");
	settings.SetToolTip("option5", "Split at the end of Invitation to a Party");
	settings.Add("option6", true, "Tracking Hayamoto");
	settings.SetToolTip("option6", "Split at the end of Tracking Hayamoto");
	settings.Add("option7", true, "Hidden Valley");
	settings.SetToolTip("option7", "Split at the end of Hidden Valley");
	settings.Add("option8", true, "At the Gates");
	settings.SetToolTip("option8", "Split at the end of At the Gates");
	settings.Add("option9", true, "Shogun Showdown");
	settings.SetToolTip("option9", "Split at the end of Shogun Showdown");
	settings.Add("option10", true, "Basement Killing");
	settings.SetToolTip("option10", "Split at the end of Basement Killing");
	settings.Add("option11", true, "The Graveyard Shift");
	settings.SetToolTip("option11", "Split at the end of The Graveyard Shift");
	settings.Add("option12", true, "The Jacuzzi Job");
	settings.SetToolTip("option12", "Split at the end of The Jacuzzi Job");
	settings.Add("option13", true, "Murder at the Bazaar");
	settings.SetToolTip("option13", "Split at the end of Murder at the Bazaar");
	settings.Add("option14", true, "The Motorcade Interception");
	settings.SetToolTip("option14", "Split at the end of The Motorcade Interception");
	settings.Add("option15", true, "Tunnel Rat");
	settings.SetToolTip("option15", "Split at the end of Tunnel Rat");
	settings.Add("option16", true, "Temple City Ambush");
	settings.SetToolTip("option16", "Split at the end of Temple City Ambush");
	settings.Add("option17", true, "The Death of Hannelore");
	settings.SetToolTip("option17", "Split at the end of The Death of Hannelore");
	settings.Add("option18", true, "Terminal Hospitality");
	settings.SetToolTip("option18", "Split at the end of Terminal Hospitality");
	settings.Add("option19", true, "St. Petersburg Revisited");
	settings.SetToolTip("option19", "Split at the end of St. Petersburg Revisited");
}

start
{
	if (current.IsAllLevels == 791751985 && current.IsLoadScreen == 1)
	{
		return true;
	}
}

split
{
	if (settings["option1"] && current.IsAllLevels == 791751986 && old.IsAllLevels == 1852143214)
	{
		return true;
	}
	if (settings["option2"] && current.IsAllLevels == 791817522 && old.IsAllLevels == 1852143214)
	{
		return true;
	}
	if (settings["option3"] && current.IsAllLevels == 791883058 && old.IsAllLevels == 791817522)
	{
		return true;
	}
	if (settings["option4"] && current.IsAllLevels == 791948594 && old.IsAllLevels == 791883058)
	{
		return true;
	}
	if (settings["option5"] && current.IsAllLevels == 791751987 && old.IsAllLevels == 1852143214)
	{
		return true;
	}
	if (settings["option6"] && current.IsAllLevels == 1630678323 && old.IsAllLevels == 791751987)
	{
		return true;
	}
	if (settings["option7"] && current.IsAllLevels == 1647455539 && old.IsAllLevels == 1630678323)
	{
		return true;
	}
	if (settings["option8"] && current.IsAllLevels == 791883059 && old.IsAllLevels == 1647455539)
	{
		return true;
	}
	if (settings["option9"] && current.IsAllLevels == 791751988 && old.IsAllLevels == 1852143214)
	{
		return true;
	}
	if (settings["option10"] && current.IsAllLevels == 791817524 && old.IsAllLevels == 791751988)
	{
		return true;
	}
	if (settings["option11"] && current.IsAllLevels == 791883060 && old.IsAllLevels == 791817524)
	{
		return true;
	}
	if (settings["option12"] && current.IsAllLevels == 791751989 && old.IsAllLevels == 1852143214)
	{
		return true;
	}
	if (settings["option13"] && current.IsAllLevels == 791817525 && old.IsAllLevels == 791751989)
	{
		return true;
	}
	if (settings["option14"] && current.IsAllLevels == 791883061 && old.IsAllLevels == 791817525)
	{
		return true;
	}
	if (settings["option15"] && current.IsAllLevels == 791751990 && old.IsAllLevels == 1852143214)
	{
		return true;
	}
	if (settings["option16"] && current.IsAllLevels == 791817526 && old.IsAllLevels == 791751990)
	{
		return true;
	}
	if (settings["option17"] && current.IsAllLevels == 791883062 && old.IsAllLevels == 791817526)
	{
		return true;
	}
	if (settings["option18"] && current.IsAllLevels == 791751991 && old.IsAllLevels == 791817520)
	{
		return true;
	}
	if (settings["option19"] && current.IsAllLevels == 791751992 && old.IsAllLevels == 791751991)
	{
		return true;
	}
	if (current.IsUsedForEndCutscene == 1149861887 && old.IsUsedForEndCutscene == 0)
	{
		return true;
	}
}
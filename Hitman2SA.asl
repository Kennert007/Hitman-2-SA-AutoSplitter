state("hitman2", "v1.02")
{
	int IsLoad : 0x02AE234, 0xD8;
	int IsEndCut : 0x003E9C0, 0x344;
}

init
{
	vars.split = 0;
}

start
{
	if (current.IsLoad == 1 && old.IsLoad == 0)
	{
		vars.split += 1;
		return true;
	}
}

split
{
	if (current.IsLoad == 1 && old.IsLoad == 0)
	{
		vars.split += 1;
		return true;
	}
	if (current.IsEndCut == 1149861887 && old.IsEndCut == 0)
	{
		vars.split += 1;
		return true;
	}
}
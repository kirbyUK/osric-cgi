package OSRIC::Races;

# The stat buffs/nerfs a race gives:
sub stats_boosts
{
	{
		str => 0,
		dex => 0,
		con => 0,
		int => 0,
		wis => 0,
		cha => 0,
	}
}

# The permitted classes:
sub permitted_classes
{
	[ "Assassin", "Cleric", "Druid", "Fighter", "Illusionist", "MagicUser",
		"Paladin", "Ranger", "Thief" ]
}

# A hash of subs to generate the starting age based on class:
sub ages
{
	{
		assassin 	=> sub { },
		cleric 		=> sub { },
		druid 		=> sub { },
		fighter 	=> sub { },
		illusionist => sub { },
		magicuser 	=> sub { },
		paladin 	=> sub { },
		ranger 		=> sub { },
		theif 		=> sub { },
	}
}

# The racial limitations:
sub racial_limitations
{
	{
		str => { min => 0, max => 0 },
		dex => { min => 0, max => 0 },
		con => { min => 0, max => 0 },
		int => { min => 0, max => 0 },
		wis => { min => 0, max => 0 },
		cha => { min => 0, max => 0 },
	}
}

1;

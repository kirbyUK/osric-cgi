package OSRIC::Races::Elf;
use parent qw(OSRIC::Races);
use OSRIC::Util qw/d/;

# The stat buffs/nerfs a race gives:
sub stats_boosts
{
	{
		str => 0,
		dex => 1,
		con => -1,
		int => 0,
		wis => 0,
		cha => 0,
	}
}

# The permitted classes:
sub permitted_classes
{
	[ "Assassin", "Cleric", "Fighter", "MagicUser", "Thief",
	[ "Fighter", "MagicUser" ], [ "Fighter", "Thief" ],
	[ "MagicUser", "Thief" ], [ "Fighter", "MagicUser", "Thief" ] ]
}

# A hash of subs to generate the starting age based on class:
sub ages
{
	{
		assassin 	=> sub { 0 },
		cleric 		=> sub { my $i = 0; $i += d(10) for(1..10); $i += 500; },
		druid 		=> sub { 0 },
		fighter 	=> sub { my $i = 0; $i += d(6) for(1..5); $i += 130; },
		illusionist => sub { 0 },
		magicuser 	=> sub { my $i = 0; $i += d(6) for(1..5); $i += 150; },
		paladin 	=> sub { 0 },
		ranger 		=> sub { 0 },
		theif 		=> sub { my $i = 0; $i += d(6) for(1..5); $i += 100; },
	}
}

# The racial limitations:
sub racial_limitations
{
	{
		str => { min => 3, max => 18 },
		dex => { min => 7, max => 19 },
		con => { min => 8, max => 17 },
		int => { min => 8, max => 18 },
		wis => { min => 3, max => 18 },
		cha => { min => 3, max => 18 },
	}
}

1;

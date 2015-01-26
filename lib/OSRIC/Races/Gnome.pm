package OSRIC::Races::Gnome;
use parent qw(OSRIC::Races);
use OSRIC::Util qw/d/;

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
	[ "Assassin", "Cleric", "Fighter", "Illusionist", "Thief",
	[ "Fighter", "Illusionist" ], [ "Fighter", "Thief" ],
	[ "Illusionist", "Thief" ] ]
}

# A hash of subs to generate the starting age based on class:
sub ages
{
	{
		assassin 	=> sub { my $i = 0; $i += d(4) for(1..5); $i += 80; },
		cleric 		=> sub { my $i = 0; $i += d(12) for(1..3); $i += 300; },
		druid 		=> sub { 0 },
		fighter 	=> sub { my $i = 0; $i += d(4) for(1..5); $i += 60; },
		illusionist => sub { my $i = 0; $i += d(12) for(1..2); $i += 100; }
		magicuser 	=> sub { 0 },
		paladin 	=> sub { 0 },
		ranger 		=> sub { 0 },
		theif 		=> sub { my $i = 0; $i += d(4) for(1..5); $i += 80; },
	}
}

# The racial limitations:
sub racial_limitations
{
	{
		str => { min => 6, max => 18 },
		dex => { min => 3, max => 19 },
		con => { min => 8, max => 17 },
		int => { min => 7, max => 18 },
		wis => { min => 3, max => 18 },
		cha => { min => 3, max => 18 },
	}
}

1;

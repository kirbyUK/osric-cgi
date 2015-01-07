package OSRIC::Classes::Assassin;
use parent qw(Classes);
use OSRIC::Util qw/d/;

# A sub to get the maximum amount of starting gold (for sorting) and one to get
# an actual amount of starting gold: 
sub max_starting_gold { 200 }
sub get_gold { (((d(6) + d(6) + d(6)) + 2) * 10) } # (3d6 + 2) * 10

# Minimum score requirements:
sub minimum_scores
{
	{
		str => 9,
		dex => 6,
		con => 7,
		int => 3,
		wis => 6,
		cha => 6,
	}
}

1;

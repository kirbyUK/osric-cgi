package OSRIC::Class::Paladin;
use parent qw(OSRIC::Class);
use OSRIC::Util qw/d/;

# A sub to get the maximum amount of starting gold (for sorting) and one to get
# an actual amount of starting gold: 
sub max_starting_gold { 200 }
sub get_gold { ((d(6, 3) + 2) * 10) } # (3d6 + 2) * 10

# Minimum score requirements:
sub minimum_scores
{
	{
		str => 12,
		dex => 6,
		con => 9,
		int => 9,
		wis => 13,
		cha => 17,
	}
}

1;

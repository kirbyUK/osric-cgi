package OSRIC::Classes::Illusionist;
use parent qw(OSRIC::Classes);
use OSRIC::Util qw/d/;

# A sub to get the maximum amount of starting gold (for sorting) and one to get
# an actual amount of starting gold: 
sub max_starting_gold { 80 }
sub get_gold { ((d(4) + d(4)) * 10) } # 2d4 * 10

# Minimum score requirements:
sub minimum_scores
{
	{
		str => 6,
		dex => 16,
		con => 0,
		int => 15,
		wis => 6,
		cha => 6,
	}
}

1;

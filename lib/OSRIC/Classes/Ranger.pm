package OSRIC::Classes::Ranger;
use parent qw(OSRIC::Classes);
use OSRIC::Util qw/d/;

# A sub to get the maximum amount of starting gold (for sorting) and one to get
# an actual amount of starting gold: 
sub max_starting_gold { 200 }
sub get_gold { (((d(6) + d(6) + d(6)) + 2) * 10) } # (3d6 + 2) * 10

# Minimum score requirements:
sub minimum_scores
{
	{
		str => 13,
		dex => 6,
		con => 14,
		int => 13,
		wis => 14,
		cha => 6,
	}
}

1;

package OSRIC::Class::MagicUser;
use parent qw(OSRIC::Class);
use OSRIC::Util qw/d/;

# A sub to get the maximum amount of starting gold (for sorting) and one to get
# an actual amount of starting gold: 
sub max_starting_gold { 80 }
sub get_gold { (d(4, 2) * 10) } # 2d4 * 10

# The starting HP of the class:
sub get_hp { d(4) }

# Minimum score requirements:
sub minimum_scores
{
	{
		str => 3,
		dex => 6,
		con => 6,
		int => 9,
		wis => 6,
		cha => 6,
	}
}

1;

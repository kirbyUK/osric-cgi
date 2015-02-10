package OSRIC::Util;
use Exporter qw/import/;
our @EXPORT = qw/d con_mod/;

# Rolls a dice of the specified number:
sub d
{
	# The range of the dice:
	my $range = shift;

	# Optional: The number of dice thrown.
	my $n = shift // 1;

	my $i = 0;
 	$i += (int(rand($range)) + 1) for(1..$n); 
	return $i;
}

# Returns the constitution hp modifier (at level 1):
sub con_mod
{
	my $con = shift;
	my $class = shift;

	# Get the constitution modifier:
	my $mod;
	if($con <= 3)
	{
		$mod = -2;
	}
	elsif(($con > 3) && ($con <= 6))
	{
		$mod = -1;
	}
	elsif(($con > 6) && ($con <= 14))
	{
		$mod = 0;
	}
	elsif(($con > 14) && ($con <= 15))
	{
		$mod = 1;
	}
	elsif(($con > 15) && ($con <= 16))
	{
		$mod = 2;
	}
	elsif(($con > 16) && ($con <= 17))
	{
		if(($class eq "Fighter") || ($class eq "Paladin")
			|| ($class eq "Ranger"))
		{
			$mod = 3;
		}
		else
		{
			$mod = 2;
		}
	}
	elsif(($con > 17) && ($con <= 18))
	{
		if(($class eq "Fighter") || ($class eq "Paladin")
			|| ($class eq "Ranger"))
		{
			$mod = 4;
		}
		else
		{
			$mod = 2;
		}
	}
	elsif(($con > 18) && ($con <= 19))
	{
		if(($class eq "Fighter") || ($class eq "Paladin")
			|| ($class eq "Ranger"))
		{
			$mod = 5;
		}
		else
		{
			$mod = 2;
		}
	}
	return $mod;
}

1;

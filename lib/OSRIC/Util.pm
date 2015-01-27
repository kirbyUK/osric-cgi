package OSRIC::Util;
use Exporter qw/import/;
our @EXPORT = qw/d/;

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

1;

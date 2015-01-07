package OSRIC::Util;

# Rolls a dice of the specified number:
sub d
{
	my $n = shift;
	return int(rand($n));
}

1;

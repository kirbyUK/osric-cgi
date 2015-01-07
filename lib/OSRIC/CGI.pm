package OSRIC::CGI;
use CGI;

sub new
{
	my $class = shift;
	my $q = CGI->new;
	bless $q, $class;
}

1;

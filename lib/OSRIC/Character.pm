package OSRIC::Character;

use OSRIC::Class;
use OSRIC::Class::Assassin;
use OSRIC::Class::Cleric;
use OSRIC::Class::Druid;
use OSRIC::Class::Fighter;
use OSRIC::Class::Illusionist;
use OSRIC::Class::MagicUser;
use OSRIC::Class::Paladin;
use OSRIC::Class::Ranger;
use OSRIC::Class::Thief;

use OSRIC::Util qw/d/;
use JSON qw/encode_json/;

# Generates a new character:
sub new
{
	my $class = shift;
	my $character =
	{
		irc => "", # The player's irc nick, not found on the character sheet.
		personal =>
		{
			name => "",
			classes => [ ],
			alignment => "",
			race => "",
			xp => 0,
			hp => 0,
			ac => 0,
			lvl => 0,
			age => 0,
			height => 0,
			weight => 0,
			sex => "M"
		},
		stats =>
		{
			str => 0,
			dex => 0,
			con => 0,
			int => 0,
			wis => 0,
			cha => 0,
		},
		equipment =>
		{
			items => [ ],
			weapons => [ ],
			missiles => [ ],
			armour => [ ],
		},
		wealth =>
		{
			coins => 0,
			gems => [ ],
			other => [ ],
		},
	};
	bless $character, $class;
}

# Generates the 6 major stats:
sub generate_stats
{
	my $self = shift;
	for my $stat(keys %{$self->{stats}})
	{
		# TODO:
		# * Class specific boosts.
		# * Perhaps an alternate system where players can choose what number
		#   to allocate to what stat.
		$self->{stats}->{$stat} = d(6, 3);
	}
} 

# Gives the player a certain amount of starting gold (class-dependant):
sub generate_gold
{
	my $self = shift;

	# Get the classes and sort by the highest starting gold (see page 28): 
	my @sorted = sort { "OSRIC::Class::$a"->max_starting_gold <=> 
						"OSRIC::Class::$b"->max_starting_gold }
						@{$self->{personal}->{classes}};

	# Generate the starting gold:
	$self->{wealth}->{coins} = "OSRIC::Class::$classes[0]"->get_gold;
}

# Encodes the character to JSON:
sub to_json
{
	my $self = shift;
	my $json = encode_json $self;
}

1;

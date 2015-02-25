#!/usr/bin/perl -w -Ilib
#use OSRIC::CGI;
use OSRIC::Character;
use v5.10.1;
use strict;

my $c = OSRIC::Character->new();

# Get the player's IRC nick:
print "Enter irc nick: ";
chomp(my $irc = <STDIN>);
$c->set_irc($irc);

# Generate the player's stats:
$c->generate_stats;

# Let the player pick their race:
my @races = $c->get_available_races;
print "Your available races are:\n";
my $i = 0;
for my $race(@races)
{
	print "\t$i - $race\n";
	$i++;
}
print "Select a race (use the number): ";
chomp(my $input = <STDIN>);
$c->set_race($races[$input]);

# Let the player pick their class:
my @classes = $c->get_available_classes;
print "\nYour available classes are:\n";
$i = 0;
for my $class(@classes)
{
	my $str = join "/", @$class;
	print "\t$i - $str\n";
	$i++;
}
print "Select a class (use the number): ";
chomp($input = <STDIN>);
$c->set_class($classes[$input]);

# Generate the gold:
$c->generate_gold;

# Generate the age:
$c->generate_age;

# Generate the hp:
$c->generate_hp;

# Let the player pick an alignment:
my @alignments = $c->get_available_alignments;
print "\nYour available alignments are:\n";
$i = 0;
for my $alignment(@alignments)
{
	print "\t$i - $alignment\n";
	$i++;
}
print "Select an alignment (use the number): ";
chomp($input = <STDIN>);
$c->set_alignment($alignments[$input]);

# Allow the player to input a name:
print "Finally, give your character a name: ";
chomp($input = <STDIN>);
$c->set_name($input);

# Write the json to a file:
my $json = $c->as_json;
open my $file, '>', "$irc.json" or die "Cannot open $irc.json: $!\n";
print $file $json;
print "\nWrote file to '$irc.json'\n";

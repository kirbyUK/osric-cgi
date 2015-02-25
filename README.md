osric-cgi
=========

A CGI script for creating an OSRIC character sheet and spitting out the JSON.
This is intended to replace the previous project,
[osric-character-sheet-to-json](https://github.com/kirbyman62/osric-character-sheet-to-json).
It intends to walk the player through the entire character creation process,
and thus aims to be quite comprehensive.

Usage
-----

This is the demo branch, intended to demonstrate the functionality and produce
a useable output so vypr doesn't have to wait for me to wrestle with CGI. It
runs as an interactive command line program, just run 'osric.pl' and input what
it tells you to. It should give you a useable JSON output.

Dependancies
------------

Currently, osric-cgi depends on the following non-core modules (and by
extension - their dependancies):

* [CGI](http://search.cpan.org/~lds/CGI.pm-3.43/CGI.pm)
* [JSON](http://search.cpan.org/~makamaka/JSON-2.90/lib/JSON.pm)
* [List::Compare](http://search.cpan.org/~jkeenan/List-Compare-0.46/lib/List/Compare.pm)

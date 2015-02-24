osric-cgi
=========

A CGI script for creating an OSRIC character sheet and spitting out the JSON.
This is intended to replace the previous project,
[osric-character-sheet-to-json](https://github.com/kirbyman62/osric-character-sheet-to-json).
It intends to walk the player through the entire character creation process,
and thus aims to be quite comprehensive.

Usage
-----

Just fill out the form on the website and it should give you JSON. Pretty easy.
The JSON should eventually make it's way to the lovely
[irc-osric](https://github.com/vypr/irc-osric) bot, made by vypr.
It'll be hosted on iotek hopefully, otherwise on one of my Raspberry Pis.

Dependancies
------------

Currently, osric-cgi depends on the following non-core modules (and by
extension - their dependancies):

* [CGI](http://search.cpan.org/~lds/CGI.pm-3.43/CGI.pm)
* [JSON](http://search.cpan.org/~makamaka/JSON-2.90/lib/JSON.pm)
* [List::Compare](http://search.cpan.org/~jkeenan/List-Compare-0.46/lib/List/Compare.pm)

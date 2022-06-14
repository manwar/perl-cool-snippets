#!/usr/bin/perl

use v5.36;
use experimental qw(builtin);
use builtin qw(trim);

# Perl v5.36 introduced experimental 'trim'.
# Stripped whitespace(s) from the beginning and end.
#
# " ", an ordinary space.
# "\t", a tab.
# "\n", a new line (line feed).
# "\r", a carriage return.

use Test::More;

# pure regex equivalent to trim()
sub _trim($str) { $str = $str =~ s/\A\s+|\s+\z//ugr }

is trim("  abc  "), _trim("  abc  ");
is trim("\tabc\t"), _trim("\tabc\t");
is trim("\nabc\n"), _trim("\nabc\n");
is trim("\rabc\r"), _trim("\rabc\r");

done_testing;

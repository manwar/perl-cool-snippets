#!/usr/bin/perl

use strict;
use warnings;

use v5.10;

sub int_same { return $_[0] == $_[1] }
sub str_same { return $_[0] eq $_[1] }

# Perl v5.10 introduced smartmatch that does
# above two in a more elegant way.

sub is_same  { return $_[0] ~~ $_[1] }

use Test::More;

ok int_same(100, 100);
ok str_same('a', 'a');

ok is_same (100, 100);
ok is_same ('a', 'a');

done_testing;

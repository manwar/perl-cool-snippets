#!/usr/bin/perl

use v5.36;
use experimental qw(builtin);
use builtin qw(true false is_bool);

# Perl v5.36 introduced experimental builtin true/false/is_bool().

use Test::More;

sub _one { ($_[0] == 1)?(true):(false) }

ok  _one(1);
ok !_one(2);
ok  is_bool(1 == 1);
ok  is_bool(1 != 2);

done_testing;

#!/usr/bin/perl

# Perl v5.18 introduced experimental regex set operations.
# In Perl v5.36, it is no longer experimental, hurray.

use v5.36;

my $plus   = qr/(?[ [e]     + [a]   ])/;
my $union  = qr/(?[ [e]     | [a]   ])/; # | same as +
my $minus  = qr/(?[ [1-9]   - [8]   ])/;
my $common = qr/(?[ [13579] & [0-9] ])/;

sub operation { return $_[0] =~ /$_[1]/ }

use Test::More;

ok  operation("Perl", $plus);
ok  operation("Raku", $plus);
ok  operation("Perl", $union);
ok  operation("Raku", $union);
ok  operation(123456, $minus);
ok !operation(800000, $minus);
ok  operation(123,    $common);
ok !operation(420,    $common);

done_testing;

#!/usr/bin/perl

use warnings;
use v5.26;

# We are all aware of special variables $1, $2, $3 etc,
# that capture the matched pattern in sequence.

# In Perl v5.26, we can capture all matched patterns using
# @{^CAPTURE}.

sub capture { return [ @{^CAPTURE} ] if $_[0] =~ /$_[1]/ }

use Test::More;

my $string  = 'Perl and Raku are friends.';
my $pattern = qr/(.*?) and (.*?) are friends/;

is_deeply capture($string, $pattern), ['Perl', 'Raku'];

done_testing;

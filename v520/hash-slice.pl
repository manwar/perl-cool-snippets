#!/usr/bin/perl

use strict;
use warnings;

use v5.20;

my %hash = qw(a 1 b 2 c 3);

# Traditional way.
my %hash_slice  = map { $_ => $hash{$_} } qw(a c);
print _p(\%hash_slice);

# With Perl v5.20, you can do this.
my %_hash_slice  = %hash{ qw(a c) };
print _p(\%_hash_slice);

sub _p {
    my ($h) = @_; my $s = q{};
    $s .= $_ . " => " . $h->{$_} . "\n" for sort keys %$h;
    return $s;
}

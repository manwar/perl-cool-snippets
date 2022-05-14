#!/usr/bin/perl

use strict; use warnings;
use v5.22;

# Traditional word boundary \b.
sub word_boundary {
    my $words = [];
    push @$words, $1 while ($_[0] =~ m/\b(\w.*?)\b/g);
    return $words;
}

# Perl v5.22 introduced better word boundary \b{wb}.
sub _word_boundary {
    my $words = [];
    push @$words, $1 while ($_[0] =~ m/\b{wb}(\w.*?)\b{wb}/g);
    return $words;
}

use Test::More;

$_ = qq{Perl's best friend is Raku.};

is_deeply(
    word_boundary($_),
    [ 'Perl', 's', 'best', 'friend', 'is', 'Raku' ]
);

is_deeply(
    _word_boundary($_),
    [ q{Perl's},   'best', 'friend', 'is', 'Raku' ]
);

done_testing;

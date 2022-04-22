#!/usr/bin/perl

use strict;
use warnings;

use v5.18;

# Traditional label as we all know.

sub _loop_label {
    print "Traditional Label:\n";
    BOY: foreach my $line (@_) {
        chomp $line;
        my ($key, $data) = split /\s/, $line, 2;
        next BOY if $key eq 'boy';
        printf("%s\n", join("\n", split /\s/,$data));
    }
}

# Perl v5.18 allows to have computed label as shown below.

sub __loop_label {
    print "Computed Label:\n";
    BOY: foreach my $line (@_) {
        chomp $line;
        my ($key, $data) = split /\s/, $line, 2;
        $key = uc $key;
        next $key if $key eq 'BOY';
        printf("%s\n", join("\n", split /\s/,$data));
    }
}

my @data = <DATA>;
 _loop_label(@data);
__loop_label(@data);

__DATA__
boy b1 b2
girl g1 g2 g3
boy b3
girl g4 g5
boy b4 b5

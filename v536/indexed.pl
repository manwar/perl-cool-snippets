#!/usr/bin/perl

use v5.36;
use experimental qw(builtin for_list);
use builtin qw(indexed);

my @list = (1, 2, 3);

# Do you remember Perl v5.12, added new feature 'each'?
say "Using Perl v5.12 each ...";
while (my ($i, $v) = each @list) {
    say "Index $i Value $v";
}

# Perl v5.36 improved it a bit further.
say "Using Perl v5.36 indexed ...";
for my ($i, $v) (indexed @list) {
    say "Index $i Value $v";
}

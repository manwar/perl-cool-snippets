#!/usr/bin/perl

use strict;
use warnings;

use v5.26;

# Traditional heredocs.
sub heredocs {
    my $message = <<'HELP';
Perl is my first my love and
will remain so rest of my life.
HELP

    return $message;
}

# In v5.26, we can have indented heredocs, easy to read.
sub _heredocs {
    my $message = <<~'HELP';
        Perl is my first my love and
        will remain so rest of my life.
        HELP

    return $message;
}

print  heredocs();
print _heredocs();

#!/usr/bin/perl

use strict;
use warnings;

use v5.26;

$_ = -10.50;

# /x modified allows whitespace and comments in regex.

if (/^
     [-+]?
     (\d+    # integer
      \.
      \d+    # decimal
     )
    $/x) {
    print "/x  => matched\n";
}

# Using /xx modifier introduced in v5.26, it does
# everything that /x does and also allows to have
# SPACE and TAB within bracketed character class.

if (/^
     [ - + ]?
     (\d+    # integer
      \.
      \d+    # decimal
     )
    $/xx) {
    print "/xx => matched\n";
}

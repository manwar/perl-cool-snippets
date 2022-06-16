#!/usr/bin/perl

# In Perl v5.36 scope (in fact v5.11 or later)
use v5.36;

say "Hello World !!!";

# The use of the following now issue a warning
# where version is lower than v5.11. Also note
# it will become fatal in v5.40.

use v5.6;

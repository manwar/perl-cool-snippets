#!/usr/bin/perl

use strict; use warnings;
use v5.22;

# $ cat data.txt
# Hello World

# Tradition diamond operator used like below:
#
# $ perl -e 'print while (<>)' data.txt

# But it would create trouble if you do something:
#
# $ perl -e 'print while (<>)' '> data.txt'

# To get around the issue, Perl v5.22 introduced
# double diamond operator.
#
# $ perl -Mv5.22 -e 'print while (<<>>)' '> data.txt'

print while (<<>>);

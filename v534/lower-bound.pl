#!/usr/bin/env perl

use strict; use warnings;
use v5.34;

# We have all used the following regex:
#
# {n}     Match exactly n times
# {n,}    Match at least n times
# {n,m}   Match at least n but not more than m times

# Perl v5.34 allows an empty lower bound for regular expression.
# Also, space allowed within curly braces.
#
# {,n}    Match at most n times

sub match_bound { return $_[0] =~ /^Pe{ ,1}/ }

use Test::More;

ok(match_bound('Perl'));
ok(match_bound('P')   );

done_testing;

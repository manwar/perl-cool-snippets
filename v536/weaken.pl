#!/usr/bin/perl

use v5.36;
use experimental qw(builtin);
use builtin qw(weaken is_weak);

# Perl v5.36 introduced experimental 'weaken',
# 'unweaken' and 'is_weak'.
#
# In earlier Perl, we would use Scalar::Util.
# builtin::is_weak is same as isweak().

my $c = bless { self => undef }, 'Class';
$c->{self} = $c;

use Test::More;

weaken $c;

ok is_weak($c);

done_testing;

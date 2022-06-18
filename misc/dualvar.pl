#!/usr/bin/perl

use strict; use warnings;
use Scalar::Util qw(dualvar isdual);

my $foo = dualvar 10, "Hello";

use Test::More;

is $foo + 0,  10;
is $foo, "Hello";
ok isdual($foo);

done_testing;

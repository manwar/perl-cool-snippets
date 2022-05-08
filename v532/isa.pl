#!/usr/bin/perl

use strict; use warnings;

use v5.32;
use experimental qw(isa);

package Class { sub new { bless {}, $_[0] } }

use Test::More;

is(Class->new isa Class, 1);

# or even better as suggested by Dave Cross.
ok(Class->new isa Class);

done_testing;

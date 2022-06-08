#!/usr/bin/perl

# In Perl v5.32 'isa' was experimental.
# In Perl v5.36, it is no longer experimental.

use v5.36;

package Class { sub new { bless {}, $_[0] } }

use Test::More;

ok(Class->new isa Class);

done_testing;

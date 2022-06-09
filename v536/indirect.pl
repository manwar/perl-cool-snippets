#!/usr/bin/perl

use v5.36;

package Class { sub new { bless {}, $_[0] } }

# In Perl v5.36, the following indirect object syntax
# would throw error.
#
# However in earlier Perl, e.g. v5.34, it is OK.
#
# my $c = new Class;

# The preferred way in Perl v5.36

my $c = Class->new;

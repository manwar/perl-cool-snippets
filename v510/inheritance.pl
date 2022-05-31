#!/usr/bin/perl

=head1

    package R;

    sub new { bless {}, $_[0]  }
    sub p   { print "R::p()\n" }

    1;

=cut

use strict; use warnings;
use v5.10;
use lib 'v510/';

package P1 { our @ISA = qw(R)     }

# Perl v5.004 introduced 'base'
package P2 { use base   qw(R)     }

# Perl v5.10 introduced 'parent' (recommended)
package P3 { use parent qw(R)     }

# Personal Favourite
package P4 { use Moo; extends 'R' }

# Do you want to know the difference between parent and base?
# https://stackoverflow.com/questions/876471/what-is-the-difference-between-parent-and-base-in-perl-5

package main {
    P1->new->p;
    P2->new->p;
    P3->new->p;
    P4->new->p;
}

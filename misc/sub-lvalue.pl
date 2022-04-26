#!/usr/bin/perl

use strict;
use warnings;

my $t = T->new;

# traditional
$t->x(5);
print $t->x, "\n";

# lvalue in action
$t->x = 6;
print $t->x, "\n";

package T;

sub new      { bless { x => undef }, $_[0];                       }
sub x:lvalue { (defined $_[1])?($_[0]->{x} = $_[1]):($_[0]->{x}); }

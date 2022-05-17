#!/usr/bin/perl

use Test2::V0;

sub array_ref { return [ 1, 2, 3 ] };

is array_ref(), [1,2,3];

done_testing;

=head1 Traditional Process

use strict;
use warnings;

use Test::More;

sub array_ref { return [ 1, 2, 3 ] };

is_deeply array_ref(), [1,2,3];

done_testing;

=cut

#!/usr/bin/perl

=head1 PACKAGE P1

    package P1;

    require Exporter;
    our @ISA    = qw(Exporter);
    our @EXPORT = qw(do_sum);

    sub do_sum { return $_[0] + $_[1] }

    1;

=head1 PACKAGE P2

    package P2;

    use parent  qw(Exporter);
    our @EXPORT = qw(do_mul);

    sub do_mul { return $_[0] * $_[1] }

    1;

=head1 PACKAGE P3 (Personal Favourite)

    package P3;

    use Exporter  qw(import);
    our @EXPORT = qw(do_sub);

    sub do_sub { return $_[0] - $_[1] }

    1;

=cut

use strict; use warnings;
use lib 'misc/';

use P1;
use P2;
use P3;

print do_sum(3,2), "\n";
print do_mul(3,2), "\n";
print do_sub(3,2), "\n";

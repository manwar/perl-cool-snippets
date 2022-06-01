package P1;

use strict; use warnings;

require Exporter;
our @ISA    = qw(Exporter);
our @EXPORT = qw(do_sum);

sub do_sum { return $_[0] + $_[1] }

1;

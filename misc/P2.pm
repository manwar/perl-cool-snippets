package P2;

use strict; use warnings;

use parent  qw(Exporter);
our @EXPORT = qw(do_mul);

sub do_mul { return $_[0] * $_[1] }

1;

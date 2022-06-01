package P3;

use strict; use warnings;

use Exporter  qw(import);
our @EXPORT = qw(do_sub);

sub do_sub { return $_[0] - $_[1] }

1;

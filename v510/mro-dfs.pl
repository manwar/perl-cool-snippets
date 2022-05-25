#!/usr/bin/perl

package P12 { sub new {}           }
package P11 { use base qw(P12)     }
package P22 { sub new {}           }
package P21 { use base qw(P22)     }
package P1  { use base qw(P11 P21) }
package P2  { use base qw(P21 P11) }

package main {
    use strict; use warnings;

    use mro;
    use v5.10;
    use Test::More;;

    # method resolution order (dfs)
    is_deeply mro::get_linear_isa('P1'), [qw(P1 P11 P12 P21 P22)];
    is_deeply mro::get_linear_isa('P2'), [qw(P2 P21 P22 P11 P12)];

    done_testing;
}

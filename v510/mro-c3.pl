#!/usr/bin/perl

package ROOT { sub new {}           }
package P12  { use base qw(ROOT)    }
package P11  { use base qw(P12)     }
package P22  { use base qw(ROOT)    }
package P21  { use base qw(P22)     }
package P1   { use base qw(P11 P21) }
package P2   { use base qw(P21 P11) }

package main {
    use strict; use warnings;

    use mro;
    use v5.10;
    use Test::More;;

    # method resolution order (dfs)
    is_deeply mro::get_linear_isa('P1'),
    [qw(P1 P11 P12 ROOT P21 P22)];

    is_deeply mro::get_linear_isa('P2'),
    [qw(P2 P21 P22 ROOT P11 P12)];

    # method resolution order (c3)
    is_deeply mro::get_linear_isa('P1', 'c3'),
    [qw(P1 P11 P12 P21 P22 ROOT)];

    is_deeply mro::get_linear_isa('P2', 'c3'),
    [qw(P2 P21 P22 P11 P12 ROOT)];

    done_testing;
}

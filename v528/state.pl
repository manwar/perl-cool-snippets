#!/usr/bin/perl

use strict; use warnings;

use v5.28;

# In v5.10, state variable can be initialized when it is scalar.
sub scalar_state {
    state $i = 0;
    $i++;
    print "$i\n";
}
scalar_state() for (1 .. 2);

# Output:
# 1
# 2

# In v5.28, now array and hash can also be initialized.

sub array_state {
    state @x = (1);
    push @x, $x[-1] + 1;
    print join(",", @x), "\n";
}
array_state() for (1 .. 2);

# Output:
# 1,2
# 1,2,3

sub hash_state  {
    state %x = ('a' => 1);
    my $last_key = (sort keys %x)[-1];
    $x{ ++$last_key } = 1;
    print join(",", sort keys %x), "\n";
}
hash_state()  for (1 .. 2);

# Output:
# a,b
# a,b,c

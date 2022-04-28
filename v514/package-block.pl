#!/usr/bin/perl

use v5.14;

# Early days, package name and version defined separately.
package P1;

our $VERSION = 0.01;

# In v5.12, we can define package and version together.
package P2 0.02;


# In v5.14, we can have package block with name and version.
package P3 0.03 {

}

package main;

for (qw(P1 P2 P3)) {
    printf("$_ version: %s\n", $_->VERSION);
}

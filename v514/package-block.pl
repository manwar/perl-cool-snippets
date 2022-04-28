use v5.14;

# Early days, package name and version defined separately.
package P1;

our $VERSION = 0.01;
say "in P1, \$VERSION is " . $VERSION;
say "in P1, P1->VERSION is " . P1->VERSION;

# In v5.12, we can define package and version together.
package P2 0.02;
say "in P2, \$VERSION is " . $VERSION;
say "in P2, VERSION is " . P2->VERSION;


# In v5.14, we can have package block with name and version.
package P3 0.03 {
say "in P3, \$VERSION is " . $VERSION;
say "in P3, VERSION is" . P3->VERSION;

}

package main;

for (qw(P1 P2 P3)) {
    printf("$_->VERSION: %s\n", $_->VERSION);
}
printf("\$P1::VERSION: %s\n", $P1::VERSION);
printf("\$P2::VERSION: %s\n", $P2::VERSION);
printf("\$P3::VERSION: %s\n", $P3::VERSION);

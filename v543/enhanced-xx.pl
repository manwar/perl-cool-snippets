use v5.43.9;
use experimental "enhanced_xx";

# Before the enhanced /xx feature you would have to do this:
#
#    if ($string =~ m/ [a-zA-Z0-9\s\.]+ /xx) {
#        print "Match found: $&\n";
#    }

my $string = "Perl v5.43.9";

if ($string =~ m/ [
                    a-z A-Z    # Match letters (P, e, r, l, v)
                    0-9        # Match digits (5, 4, 3, 9)
                    \s         # Match the space
                    \.         # Match the literal dots
                  ] +
                /xx) {
    print "Match found: $&\n";
}

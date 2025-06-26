#!/usr/bin/env perl

# https://metacpan.org/release/CONTRA/perl-5.42.0-RC1/view/pod/perldelta.pod

use v5.42;
use experimental 'class';

class Calc {
    my method process($x, $y, $op) {
        if ($op eq '+') {
            return $x + $y;
        }
        elsif ($op eq '-') {
            return $x - $y;
        }
        elsif ($op eq '*') {
            return $x * $y;
        }
        else {
            return;
        }
    }

    method plus($x, $y) {
        $self->&process($x, $y, '+');
    }

    method minus($x, $y) {
        $self->&process($x, $y, '-');
    }

    method multiply($x, $y) {
        $self->&process($x, $y, '*');
    }
}

my $calc = Calc->new;
say $calc->plus(3,2);        # 5
say $calc->minus(3,2);       # 1
say $calc->multiply(3,2);    # 6
say $calc->process(3,2,'+'); # Can't locate object method "process" via package "Calc"

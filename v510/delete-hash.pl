#!/usr/bin/perl

use strict; use warnings;
use v5.10;

# To delete a hash key.
sub delete_key {
    my %capital_of = ('England' => 'London', 'France' => 'Paris');
    return delete $capital_of{ $_[0] };
}

# To delete more than one keys.
sub delete_keys {
    my %capital_of = ('England' => 'London', 'France' => 'Paris');
    return [ delete @capital_of{ @_ } ];
}

# How about initialisation?
sub hash_lvalues {
    my @countries = qw(England France);
    my @capitals  = qw(London Paris);

    my %capital_of = ();
    @capital_of{ @countries } = @capitals;

    return \%capital_of;
}

use Test::More;

is          delete_key(qw(England)),
            'London';
is_deeply  delete_keys(qw(England France)),
           [ qw(London Paris) ];
is_deeply hash_lvalues(),
           { qw(England London France Paris) };

done_testing;

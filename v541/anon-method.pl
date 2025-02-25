#!/usr/bin/env perl

use v5.41;
use experimental 'class';

class Greeting {
    field $name :param :reader;

    method hello {
        my $name = $self->name;
        return sub {
            return "Hello $name";
        }
    }

    method hi {
        my $name = $self->name;
        return method {
            return "Hi $name";
        }
    }
}

my $obj = Greeting->new(name => "Joe");
say $obj->hello()->();   # Hello Joe
say $obj->hi()->($obj);  # Hi Joe
# or this, may be.
my $hi = $obj->hi();
say $obj->$hi;           # Hi Joe

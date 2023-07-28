#!/usr/bin/perl

use v5.38;
use experimental 'class';

class Singleton 0.01 {
    my $instance;
    sub instance($class) { $instance //= $class->new }
}

class SingleObject :isa(Singleton) {
    field $count :param = 0;
    field $_count  = $count;
    method counter { ++$_count }
}

my $obj1 = SingleObject->instance;
say $obj1->counter;
say $obj1->counter;

my $obj2 = SingleObject->instance;
say $obj2->counter;

my $obj3 = SingleObject->instance;
say $obj3->counter;
say $obj3->counter;

#!/usr/bin/perl

use v5.38;
use experimental 'class';

class Singleton 0.01 {
    my $instance;
    sub instance($class) { $instance //= $class->new }
}

class SingleObject :isa(Singleton) {
    field $count :param = 0;
    method counter { ++$count }
}

say SingleObject->instance->counter;
say SingleObject->instance->counter;
say SingleObject->instance->counter;
say SingleObject->instance->counter;
say SingleObject->instance->counter;

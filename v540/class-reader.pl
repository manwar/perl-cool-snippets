#!/usr/bin/env perl

use v5.40;
use experimental 'class';

class Employee v0.0.1 {
    field $name :param :reader;
    field $age  :param :reader(get_age);
}

my $emp = Employee->new(name => "Joe", age => 40);
say $emp->name;
say $emp->get_age;

#!/usr/bin/perl

use v5.38;
use experimental 'class';

class Animal {
    field $name;
    my $instance;

    sub get_instance    { $instance //= Animal->new }
    method name($xname) { $name = $xname            }
    method say_my_name  { say $name                 }
}

my $animal1 = Animal->get_instance;
$animal1->name("Camel");
$animal1->say_my_name;

my $animal2 = Animal->get_instance;
$animal2->say_my_name;


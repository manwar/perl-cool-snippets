#!/usr/bin/perl

use v5.38;
use feature 'class';
no warnings 'experimental::class';

class Animal {
    method eat { say "I can eat!" }
}

class Dog :isa(Animal) {
    method bark { say "Woof Woof!" }
}

my $dog = Dog->new;
$dog->eat();
$dog->bark();


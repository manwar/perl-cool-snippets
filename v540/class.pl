#!/usr/bin/env perl

use v5.40;
use experimental 'class';

class Example1 {
    field $x = __CLASS__->default_x;
    field $y = __CLASS__->default_y;

    sub default_x { 10 }
    sub default_y { 20 }
    method sum { return $x + $y }
}

class Example2 :isa(Example1) {

    sub default_x { 1 }
    sub default_y { 2 }
}

say Example1->new->sum;  # 30
say Example2->new->sum;  # 3


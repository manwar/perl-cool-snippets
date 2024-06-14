#!/usr/bin/env perl

use v5.40;
use experimental 'class';

class Sum1 {
    field $x = __CLASS__->default_x;
    field $y = __CLASS__->default_y;

    sub default_x { 10 }
    sub default_y { 20 }
    method sum { return $x + $y }
}

class Sum2 :isa(Sum1) {

    sub default_x { 1 }
    sub default_y { 2 }
}

say Sum1->new->sum;
say Sum2->new->sum;


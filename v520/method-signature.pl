#!/usr/bin/perl

use strict;
use warnings;

use v5.20;
use experimental qw(signatures);

# fixed parameters
sub s1($name, $sex) {
    return "Name: $name Sex: $sex";
}

# default parameter
sub s2($name, $sex="male") {
    return "Name: $name Sex: $sex";
}

# 2 or more parameters (array)
sub s3($name, $sex, @others) {
    return "Name: $name Sex: $sex Others: "
           . join q{, }, @others;
}

# 2 or more parameters (hash)
sub s4($name, $sex, %others) {
    return "Name: $name Sex: $sex "
           . join q{ }, map { "$_: $others{$_}" } keys %others;
}

use Test::More;

is s1("Joe", "male"),
   "Name: Joe Sex: male",
   "fixed parameters";

is s2("Joe",),
   "Name: Joe Sex: male",
   "default parameters";

is s3("Joe", "male", 20),
   "Name: Joe Sex: male Others: 20",
   "2 or more parameters (array)";

is s4("Joe", "male", Age => 20),
   "Name: Joe Sex: male Age: 20",
   "2 or more parameters (hash)";

done_testing;

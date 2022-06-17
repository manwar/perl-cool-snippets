#!/usr/bin/perl

use v5.36;
use experimental qw(builtin);
use builtin qw(blessed reftype);

# Perl v5.36 introduced experimental 'reftype' and 'blessed'.
# In earlier Perl, we can use Scalar::Util.
#
# reftype()
# {} => HASH; [] => ARRAY; qr// => REGEXP
#
# blessed()
# $scalar => undef; [] => undef; {} => undef; bless {},'Foo' => 'Foo'

use Test::More;

is Scalar::Util::reftype({}), reftype({});
is Scalar::Util::reftype([]), reftype([]);
is Scalar::Util::reftype(qr/[0-9]/), reftype(qr/[0-9]/);

is Scalar::Util::blessed '1', blessed '1';
is Scalar::Util::blessed [] , blessed [];
is Scalar::Util::blessed {} , blessed {};

my $obj = bless {}, 'Foo';
is Scalar::Util::blessed $obj, blessed $obj;

done_testing;

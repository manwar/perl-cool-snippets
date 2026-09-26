#!/usr/bin/env perl

use v5.45.3;
use strict;
use warnings;

use Test2::V0;
use experimental 'equ';

subtest 'String equality (equ) and inequality (neu)' => sub {
    ok( "hello"   equ "hello",  'equ returns true for identical strings'  );
    ok( !("hello" equ "world"), 'equ returns false for different strings' );
    ok( "hello"   neu "world",  'neu returns true for different strings'  );
    ok( !("hello" neu "hello"), 'neu returns false for identical strings' );

    ok( undef     equ undef,    'undef equ undef returns true'   );
    ok( !("hello" equ undef),   'string equ undef returns false' );
    ok( !(undef   equ "hello"), 'undef equ string returns false' );

    ok( !(undef equ ""), 'undef equ "" returns false (distinct values)' );
    ok( !(undef equ 0),  'undef equ 0 returns false (distinct values)'  );
    ok( !(""    equ 0),  '"" equ 0 returns false (distinct values)'     );
};

subtest 'Numeric equality (===) and inequality (!==)' => sub {
    ok( 42   === 42,  '=== returns true for identical numbers'  );
    ok( !(42 === 99), '=== returns false for different numbers' );
    ok( 42   !== 99,  '!== returns true for different numbers'  );
    ok( !(42 !== 42), '!== returns false for identical numbers' );

    ok( undef   === undef,  'undef  === undef returns true'   );
    ok( !(42    === undef), 'number === undef returns false'  );
    ok( !(undef === 42),    'undef  === number returns false' );

    ok( !(undef === 0),   'undef === 0 returns false (distinct values)'   );
    ok( !(undef === 0.0), 'undef === 0.0 returns false (distinct values)' );
};

subtest 'Warning freedom check on undef comparisons' => sub {
    my @warnings;
    local $SIG{__WARN__} = sub { push @warnings, @_ };

    my $res1 = (undef  equ "test");
    my $res2 = ("test" equ undef);
    my $res3 = (undef  equ undef);

    my $res4 = (undef === 100);
    my $res5 = (100   === undef);
    my $res6 = (undef === undef);

    my $res7 = (undef neu "test");
    my $res8 = (undef !== 100);

    is( \@warnings, [],
        'equ, neu, ===, and !== emit no "uninitialised value" warnings with undef' );
};

done_testing;

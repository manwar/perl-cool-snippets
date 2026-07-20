#!/usr/bin/env perl

# https://blog.unicode.org/2025/09/unicode-170-release-announcement.html

use v5.44;

use utf8;
use Unicode::UCD 'charinfo';

binmode(STDOUT, ':utf8');

# 1. Using a verified Unicode 17.0 character name from Tolong Siki
my $tolong_siki_a = "\N{TOLONG SIKI LETTER A}";
say "TOLONG SIKI LETTER A: ", sprintf("[U+%04X]", ord($tolong_siki_a));

# 2. Testing regular expression matching on the new Tai Yo script block
my $tai_yo_char = "\x{1E6C0}";
if ($tai_yo_char =~ /\p{Script=Tai_Yo}/) {
    say "Regex property engine matches the new Tai Yo script.";
}

# 3. Querying code point in Unicode 17.0 Tolong Siki script
my $info = charinfo(0x11DB0);
say "Character Name: ", $info->{name};
say "Script: ", Unicode::UCD::charscript(0x11DB0);

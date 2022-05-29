#!/usr/bin/perl

use strict; use warnings;
use v5.14;

# Character representation using hex.
say "Hex: \x{52}\x{61}\x{6b}\x{75}";               # Raku

# Perl v5.14 introduced similar format for octal.
say "Oct: \o{122}\o{141}\o{153}\o{165}";           # Raku

# Or mixing the two, for fun.
say "Mix: \x{52}\o{141}\x{6b}\o{165}";             # Raku

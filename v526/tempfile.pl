#!/usr/bin/perl

use strict; use warnings;
use v5.26;
use File::Temp qw/:POSIX tempfile/;

# create temp file (not recommended).
# for more information with regard to the issues:
# https://owasp.org/www-community/vulnerabilities/Insecure_Temporary_File

my ($fh_tmp, $tmpfile) = tmpnam();
print "non-recommended temp file: $tmpfile\n";

# Perl v5.26 recommended way to create temp file.

my ($fh, $filename) = tempfile();
print "recommended temp file: $filename\n";

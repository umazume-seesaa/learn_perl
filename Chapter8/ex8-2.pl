#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use feature 'state';

while (<>) {
    chomp;
    if (/a\b/) {
        print "Matched: |$`<$&>$'|\n";
    } else {
        print "No match: |$_|\n";
    }
}
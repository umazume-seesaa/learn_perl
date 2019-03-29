#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use feature 'state';

while (<>) {
    chomp;
    if (/(?<word>\b\w*a\b)/) {
        print "Matched: |$`<$&>$'|  'word' contains '$+{word}'\n";
    } else {
        print "No match: |$_|\n";
    }
}
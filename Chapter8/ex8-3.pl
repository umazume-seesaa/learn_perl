#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use feature 'state';

while (<>) {
    chomp;
    if (/(\b\w*a\b)/) {
        print "Matched: |$`<$&>$'|  \$1 contains '$1'\n";
    } else {
        print "No match: |$_|\n";
    }
}
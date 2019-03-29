#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use feature 'state';

while (<>) {
    chomp;
    if (/(?<word1>\b\w*a\b)(?<word2>.{0,5})/) {
        print "Matched: |$`<$&>$'|  'word' contains '$+{word1}'and'$+{word2}'\n";
    } else {
        print "No match: |$_|\n";
    }
}
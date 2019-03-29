#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use feature 'state';

while (<>) {
    chomp;
    if (/\s\z/) {
        print "Matched: |$_|\n";
    } else {
        print "No match: |$_|\n";
    }
}
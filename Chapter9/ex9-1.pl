#!/usr/bin/env perl
## Copyright (C) 20XX by Yours Truly
use strict;
use warnings;
use utf8;
use feature 'state';

my $what = "fred|barney";
while (<>) {
    chomp;
    if (/($what){3}/) {
        print "Matched: |$`<$&>$'|\n";
    } else {
        print "No match: |$_|\n";
    }
}
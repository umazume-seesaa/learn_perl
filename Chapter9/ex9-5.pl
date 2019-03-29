#!/usr/bin/env perl
## Copyright (C) 20XX by Yours Truly
use strict;
use warnings;
use utf8;
use Data::Dumper;

my %do_these;
foreach (@ARGV) {
    $do_these{$_} = 1;
}

while (<>) {
    if (/\A## Copyright/) {
        delete $do_these{$ARGV};
    }
}

@ARGV = sort keys %do_these;
$^I = '.bak';
while (<>) {
    if (/\A#!/) {
        $_ .= "## Copyright (C) 20XX by Yours Truly\n";
    }
    print;
}

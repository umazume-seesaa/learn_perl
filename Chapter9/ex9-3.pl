#!/usr/bin/env perl
## Copyright (C) 20XX by Yours Truly
use strict;
use warnings;
use utf8;
use feature 'state';

# perl ex9-2.pl test.in を実行すると、fredが大小文字問わずLarryへ変換される

my $input = $ARGV[0];
if (! defined $input) {
    die "Usage:$0 filename\n";
}

my $output = $input;
$output =~ s/(\.\w+)?$/.out/;

open(IN, '<', $input) or die("Cannot open $input: $!");
open(OUT, '>', $output) or die("Cannot open $output :$!");

while (<IN>) {
    chomp;
    s/fred/\n/ig;
    s/wilma/Fred/ig;
    s/\n/Wilma/g;
    print OUT "$_\n";
}

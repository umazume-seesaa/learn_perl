#!/usr/bin/env perl
## Copyright (C) 20XX by Yours Truly
use strict;
use warnings;
use utf8;

# 自分の回答
# my $input = $ARGV[0];
# die("Usage:$0 filename\n") unless $input;

# my $output = $input;
# $output =~ s/(\.pl)$/_new\.pl/;

# open(IN, '<', $input) or die("Cannot open $input: $!\n");
# open(OUT, '>', $output) or die("Cannot open $output: $!\n");

# while (<IN>) {
#     s/#!(.+)\n/#!$1\n## Copyright (C) 20XX by Yours Truly\n/;
#     print OUT;
# }


# テキスト回答例
$^I = '.bak';
while (<>) {
    if (/\A#!/) {
        $_ .= "## Copyright (C) 20XX by Yours Truly\n";
    }
    print;
}

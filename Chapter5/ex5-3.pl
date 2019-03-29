#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use feature 'state';

print "1.Enter field length(int) 2.Enter string list(end:Ctrl+d):\n";
chomp(my @list = <STDIN>);

print "1234567890" x ($list[0]/10+1),"\n";
for (1..$#list) {
    printf "%${list[0]}s\n", $list[$_];
}
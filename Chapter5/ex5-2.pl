#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use feature 'state';

print "Enter string list (end:Ctrl+d):\n";
chomp(my @list = <STDIN>);

print "1234567890" x 3,"\n";
for (@list) {
    printf "%20s\n", $_;
}
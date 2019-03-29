#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use feature ':5.28';

say "Enter string. Ctrl+d when finished.";
chomp(my @str = <STDIN>);
@str = sort @str;

say "-----------------\nprint in a line";
print "@str\n";

say "-----------------\nprint in separate lines";
while (my($i, $v)=each @str) {
    say $v;
}
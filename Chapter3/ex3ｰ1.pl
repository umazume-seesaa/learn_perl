#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use feature ':5.28';

say "enter string. push Ctrl+d when finished.";
chomp(my @list = <STDIN>);
@list = reverse @list;
say "-----------------";

while (my($i, $v) = each @list) {
    say $v;
}
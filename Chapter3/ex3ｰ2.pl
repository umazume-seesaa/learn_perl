#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use feature ':5.28';

my @name = qw(fred betty barney dino wilma pebbles bamm-bamm);

say "Enter number. Push Ctrl+d when finished.";
chomp(my @input = <STDIN>);
say "---------------------";
for (@input) {
    say $name[$_-1];
}
#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use feature 'state';
use feature 'say';

my @list = (1..1000);
my $list_total = &total(@list);
say $list_total;

sub total {
    my $sum;
    for (@_) {
        $sum += $_;
    }
    return $sum;
}
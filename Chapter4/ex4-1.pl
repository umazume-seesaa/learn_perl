#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use feature 'state';
use feature 'say';

my @fred = qw(1 3 5 7 9);
my $fred_total = &total(@fred);
say "Total of \@fred is $fred_total";
say "Enter some numbers on separate numbers (end->Ctrl+d):";
my $user_total = &total(<STDIN>);
say "Total of these nums is $user_total";

sub total {
    my $sum;
    for (@_) {
        $sum += $_;
    }
    return $sum;
}
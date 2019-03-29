#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use feature 'state';

my %count;
open (READ,'<' ,'name_list') or die "Cannot open file: $!\n";
while (<READ>) {
    chomp($_);
    $count{$_} += 1;
}
close (READ);

for my $key (sort keys %count) {
    print "$key => $count{$key}\n";
}
#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use feature 'state';

my $max_length;
my @keylist = keys %ENV;
for (0..$#keylist) {
    if ($max_length < length($keylist[$_])) {
        $max_length = length($keylist[$_]);
    }
}
$max_length++;

$ENV{XYZ} = 'abc';
for my $key (sort keys %ENV) {
    printf "%-${max_length}s", "$key"; 
    print "$ENV{$key}\n";
}
delete $ENV{XYZ};
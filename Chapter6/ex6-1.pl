#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use feature 'state';

my %name = (
    umazume => 'hiroki',
    wilma => 'flintstone',
    fred => 'flintstone'
);

print "Enter family name:";
chomp(my $family = <STDIN>);
if (exists $name{$family}) {
    print "$name{$family}\n";
} else {
    print "No such person in the list.\n";
}
#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use Math::Trig;

print "input radius:";
chomp(my $rad = <STDIN>);
print $rad*2*pi,"\n";
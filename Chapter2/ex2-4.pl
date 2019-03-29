#!/usr/bin/env perl
use strict;
use warnings;
use utf8;

chomp(my $num1 = <STDIN>);
chomp(my $num2 = <STDIN>);
print $num1*$num2,"\n";
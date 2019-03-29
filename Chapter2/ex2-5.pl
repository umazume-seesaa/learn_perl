#!/usr/bin/env perl
use strict;
use warnings;
use utf8;

print "enter string:";
chomp(my $str = <STDIN>);
print "enter number:";
chomp(my $num = <STDIN>);
print $str x $num,"\n";
#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use feature 'state';
use feature 'say';

my @fred = above_average(1..10);
say "\@fred is @fred";
say "(Should be 6 7 8 9 10)";
my @barney = above_average(100, 1..10);
say "\@barney is @barney";
say "(Should be just 100)";

# 自分の解答
# sub above_average {
#     my $sum;
#     my @list;
#     for (@_) {
#         $sum += $_;
#     }
#     my $average = $sum/scalar @_;

#     my $num = $#_;
#     my @list = sort{$b<=>$a} @_;
#     for (0..$num) {
#         if ($list[$_] <= $average) {
#             splice @list, $_;
#             last;
#         }
#     }
#     @list = sort{$a<=>$b} @list;
#     return @list;
# }

#以下、解答例
sub total {
    my $sum;
    for (@_) {
        $sum += $_;
    }
    return $sum;
}

sub average {
    if (@_ == 0) {return}
    my $count = @_;
    my $sum = total(@_);
    $sum/$count;
}

sub above_average {
    my $average = &average(@_);
    my @list;
    for my $element (@_) {
        if ($average < $element) {
            push @list, $element;
        }
    }
    @list;
}
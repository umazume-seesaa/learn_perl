#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use feature 'state';
use feature 'say';

greet("Fred");
greet("Barney");
greet("Wilma");
greet("Betty");

sub greet {
    state $current;
    state @list;
    $current=shift;

    if (@list) {
        say "Hi $current! I've seen: @list";
    } else {
        say "Hi $current! You are the first one here!";
    }
    push @list, $current;
}
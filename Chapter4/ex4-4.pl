#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use feature 'state';
use feature 'say';

&greet("Fred");
&greet("Barney");

sub greet {
    state $current;
    state $last;
    $current=$_[0];

    if (defined($last)) {
        say "Hi $current! $last is also here!";
    } else {
        say "Hi $current! You are the first one here!";
    }
    $last = $current;
}
#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use feature 'state';

# 読み込んだ行のうち先頭だけが大文字になっている行を表示するプログラム
# perl ex7-*.pl name_list として実行

while (<>) {
    if (/^[A-Z][a-z]+/) {
        print;
    }
}
#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use feature 'state';

# 読み込んだ行のうちfredが含まれている行を表示するプログラム
# Fredにもマッチさせる
# perl ex7-*.pl name_list として実行

while (<>) {
    if (/[fF]red/) {
        print;
    }
}
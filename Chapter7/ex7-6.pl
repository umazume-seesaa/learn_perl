#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use feature 'state';

# 読み込んだ行のうち空白を除く同じ文字が2連続している行を表示するプログラム
# perl ex7-*.pl name_list として実行

while (<>) {
    if (/wilma/ && /fred/) {
        print;
    }
}

# 解答例
# while (<>) {
#     if (/wilma.*fred|fred.*wilma/) {
#         print;
#     }
# }
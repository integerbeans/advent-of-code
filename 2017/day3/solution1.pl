#!/usr/bin/perl -wpa
# Filename : solution.pl

$num = 1;
do { $num += 2 } until $r = $num**2 >= $_;
$_ = --$num - ( $r - $_ ) % $num

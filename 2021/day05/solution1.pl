#!/usr/bin/env perl

my %m = ();
while (<>) { my ($x, $y, $x_, $y_) = m/(\d+)/g; if ($x == $x_) { my ($a, $z) = sort { $a <=> $b } $y, $y_; $m{$x,$_}++ for $a..$z; } elsif ($y == $y_) { my ($a, $z) = sort { $a <=> $b } $x, $x_; $m{$_,$y}++ for $a..$z; } }
my $res = scalar grep { $_ >= 2 } values %m;
printf "🎄1: %d\n", $res;
#! /usr/bin/perl

while (<>) { @xy = m/\d+/g; do { $m{$z = "@xy[0,1]"}++; $xy[$_] += $xy[$_+2] <=> $xy[$_] for (0, 1); } while $z ne "@xy[2,3]" }
my $res = scalar grep { $_>1 } values %m;
printf "🎄2: %d\n", $res;

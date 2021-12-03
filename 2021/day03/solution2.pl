#!/usr/bin/env perl
use strict;
use warnings; 
use List::AllUtils qw(true product);

my @i = map { chomp; [split //] } <>;  
sub f { my ($a, @in) = @_; for (my $i = 0; @in > 1; $i++) { my $o = true { $_->[$i] } @in; my $x = ($o >= (@in / 2)) ^ $a;  @in = grep { $_->[$i] == $x } @in; } return (oct("0b" . join('', @{$in[0]}))); } 
print "🎄2: ", (product map {&f( $_, @i )} (0,1));

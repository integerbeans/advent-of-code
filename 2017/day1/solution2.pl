#!/opt/perl/bin/perl

use strict;
use warnings;

use feature qw(say);
use List::Util 'sum';

my $santa = `cat input.txt`;
chomp $santa;

my $r = $santa;
my $s = length ($santa) / 2 - 1;

say 2 * sum $r =~ /(.)(?=.{$s}\1)/g;

__END__:

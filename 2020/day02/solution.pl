#!/usr/bin/perl -ln

$first+=/^(.+)-(.+) (.)(??{"([^$3]*$3){$1,$2}[^$3]*"})$/;
$second+=/^(.+)-(.+) (.):(??{"(?!.{$2}$3).{$1}|(?!.{$1}$3).{$2}"})\3/;

END{print"$first $second"}

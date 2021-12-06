use v5.14;
use Syntax::Keyword::Junction qw<any>;
use List::AllUtils qw<sum>;

my @c; my @one = 80; my @two = 256;
$c[$_]++ foreach <> =~ /\d/g;
for (1 .. 300) { my $nc = shift @c; $c[$_] += $nc for 6, 8; printf "🎄: %d\n", sum @c if $_ == any @one, @two; }
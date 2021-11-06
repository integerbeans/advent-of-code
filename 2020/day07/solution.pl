#!perl -lp0
sub r{
	my$t=/^@_ (.*)/m;
	for$c($1=~/\d+ \w+ \w+/g){
		$c=~$";
		$t+=$c*r($')}$t};
$\.=r($r="shiny gold")-1;
$a++while s/^(\w+ \w+) .*?($r)/$r.="|$1"/em;
$_=$a

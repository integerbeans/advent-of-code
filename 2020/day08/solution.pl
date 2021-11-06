#!perl -l
for$i(0..(@F=<>)){
	$a=$p=%s=();
	$_=$F[$p],$a+=/cc/*$',$p+=($p-$i+1?/mp/:/op/)?$':1until$s{$p%@F}++;
	$p==@F|!$i&&print$a}

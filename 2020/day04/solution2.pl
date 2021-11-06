#!/usr/bin/perl -00 -ln


BEGIN{
  $y = 2020;
  $a = "amb|blu|brn|gry|hzl|oth|grn";
}

if (m/byr:(\d{4})/ && $1 >= 1920 && $1 <= 2002 
	&& m/iyr:(\d{4})/ 
		&& $1 >=2010 
		&& $1 <= $y 
	&& m/eyr:(\d{4})/ 
		&& $1 >= $y 
		&& $1 <=2030 
	&& m/hgt:(\d+)(cm|in)\b/ 
		&& (($2 eq "cm" 
				&& $1 >=150 
				&& $1 <=193) 
		|| ($2 eq "in" 
			&& $1>=59 
			&& $1<=76)) 
	&& m/hcl:\#[0-9a-f]{6}\b/ 
	&& m/ecl:($a)\b/ 
	&& m/pid:\d{9}\b/ ) 
{
	$rb += 1;
}

END{
	print "🎄 => $rb"
}

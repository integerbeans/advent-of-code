#! /usr/bin/awk -f

BEGIN {FS = "" }

{trees+=$(x+1)~"#";
	x+=3;
	x%=NF;}

END{print trees}

#!/usr/bin/awk -f
BEGIN {ARGV[ARGC++] = "/usr/share/dict/british-english"}
/^f[^'fuzyre][^'fuzyrel][^'fuzyre]s$/ &&
/l/ {
	for(i=1; i <= length($0); i++) array[substr($0,i,1)] = 1;
  	cnt = 0;
  	for(element in array) cnt++;
	$2 = cnt;
  	delete array;
	print;
}
#!/usr/bin/awk -f
BEGIN   {   ARGV[ARGC++] = "/usr/share/dict/american-english";
            #minLetters = 6
        }
/^[^é'masyre]a[^é'masyre]er$/ {
	for(i=1; i <= length($0); i++) array[substr($0,i,1)] += 1;
  	cnt = 0;
  	for(element in array) cnt++;
	$(NF+1) = cnt;
    #if(cnt < minLetters) minLetters = cnt;
  	delete array;
	print;
}
END {}

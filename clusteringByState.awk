#! /bin/awk -f
BEGIN {
	FS=","
	search = ",\"state\"" ":\"" state "\","
}
$0 ~ search {
	split($1,businessID,"\""); 
	print businessID[4]	
}
#!/usr/bin/env bash

dbfile="person.db"
max_size=4096
max_rows=1000

function pause {
	sleep .5
	echo -n "."
	sleep .5
	echo -n "."
	sleep 1
	echo "."
	echo
}

clear
echo -n "Creating database"; pause
clear

./ex17 $dbfile c $max_size $max_rows

echo -n "Creating users"; pause

for i in {1..1000}
do
	first_name=`shuf -n1 /usr/share/dict/words` 
	last_name=`shuf -n1 /usr/share/dict/words` 
	echo "Creating user $first_name $last_name at address $i"
	./ex17 $dbfile s $i "$first_name $last_name" $first_name\.$last_name@gmail.com
	if [ $(( $i % 50 )) -eq 0 ];then clear; fi
done
clear


echo -n "Getting users"; pause

for i in {1..50}
do
	number=`echo $((1 + RANDOM % 500))`
	echo "Getting record $number"
	./ex17 $dbfile g $number
	sleep .10
	if [ $(( $i % 20 )) -eq 0 ];then clear; fi
done
clear

echo -n "Deleting users"; pause

for i in {1..100}
do
	number=`echo $((1 + RANDOM % 500))`
	echo "Deleting record $number"
	./ex17 $dbfile d $number
	sleep .10
	if [ $(( $i % 50 )) -eq 0 ];then clear; fi
done
clear

echo -n "Listing all of the records"; pause

users=`./ex17 $dbfile l | wc -l | tr -d '[:space:]'`
echo "Database has $users users"


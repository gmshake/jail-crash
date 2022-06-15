#!/bin/sh

while true
do
	jail -f jail.conf -c test1
	jail -f jail.conf -r test1

#	jail -f jail.conf -c test2
#	jail -f jail.conf -r test2

	sleep 1
done


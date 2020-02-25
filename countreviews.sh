#!/bin/bash
for hotel in $@/*
do
filename=$(echo $hotel | sed -e 's/.*\/hotel/hotel/')
grep -E 'Author|Content' $hotel | wc -l | awk '{print $0/2}' | awk -v var="$filename" '{print var, $0}'
done

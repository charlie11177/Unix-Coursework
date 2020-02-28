#!/bin/bash
for hotel in $@/*
do
filename=$(echo $hotel | sed -r 's/.*\/hotel/hotel/' | sed 's/.dat//')
grep -E 'Author|Content' $hotel | wc -l | awk '{print $0/2}' | awk -v var="$filename" '{print var, $0}'
done | sort -nrk 2,2

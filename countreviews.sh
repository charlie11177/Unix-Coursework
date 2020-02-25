#!/bin/bash
for hotel in $@/*
do
	grep -E 'Author|Content' $hotel | wc -l | awk '{print $0/2}'
done

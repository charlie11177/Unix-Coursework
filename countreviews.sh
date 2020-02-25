#!/bin/bash
grep -E 'Author|Content' $@ | wc -l | awk '{print $0/2}'

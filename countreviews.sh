#!/bin/bash
grep -e '\<Author\>' $@ | wc -l

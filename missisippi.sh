#!/bin/bash
x=misissippi
grep -o 's' <<< "$x" | wc -l

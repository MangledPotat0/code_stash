#!/bin/bash

progress-bar() {
	local i=$1
	local len=$2
	local digits=${#len}

	local bar_limit=$((68-2*$digits))
	local percent_done=$((i*100/len))
	local bar_count=$((percent_done*bar_limit/100))
	local s="["

	local j
	for ((j=0; j < bar_count; j++)); do
	    s+="|"
	done
	for ((j=bar_count; j < bar_limit; j++)); do
	    s+=" "
	done
	s+="]"
	echo -ne "$s $i/$len ($percent_done%)\r"
}

process_file() {
	local file=$1
	sleep .01
}

shopt -s globstar nullglob

echo 'find files'
files=(./**/*.txt)
total=${#files[@]}
echo "found $total files"

current_file=0
for file in "${files[@]}"; do
    progress-bar "$((current_file+1))" "$total"
    process_file $file
    ((current_file++))
done
echo

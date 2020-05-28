#!/bin/bash

#usage: hbenchmark.sh COUNT LINK_FILE
count=$1
links_file=$2

for i in $( seq 1 $count )
do
    while read link; do ./benchmark.sh "go" "$link"; done < $links_file
    while read link; do ./benchmark.sh "go" "$link" "a"; done < $links_file
    while read link; do ./benchmark.sh "go" "$link" "div"; done < $links_file
    while read link; do ./benchmark.sh "go" "$link" "span"; done < $links_file
    while read link; do ./benchmark.sh "go" "$link" "p"; done < $links_file

done

for i in $( seq 1 $count )
do
    while read link; do ./benchmark.sh "java" "$link"; done < $links_file
        
    while read link; do ./benchmark.sh "java" "$link" "a"; done < $links_file
    while read link; do ./benchmark.sh "java" "$link" "div"; done < $links_file
    while read link; do ./benchmark.sh "java" "$link" "span"; done < $links_file
    while read link; do ./benchmark.sh "java" "$link" "p"; done < $links_file
done




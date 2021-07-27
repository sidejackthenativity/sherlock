#!/bin/bash
input="list.txt"
while IFS= read -r line
do
  grep -R -oE ".{0,5}"$line"\(.{0,40}" 
done < "$input"

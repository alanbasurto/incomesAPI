#!/usr/bin/env bash
array=($(grep '"SEVERITY.HIGH":' results.sarif))
number=(${array[1]:0:$((${#array[1]}-1))})
if [ $((number)) -eq 0 ];then
 echo "FLAG=false" >> "$GITHUB_ENV"
 echo "There is no issue, proceed to push"
else 
 echo "there is a SEVERITY.HIGH"
 echo "FLAG=true" >> "$GITHUB_ENV" 
fi

#!/usr/bin/env bash
array=($(grep '"SEVERITY.HIGH":' results.sarif))
number=(${array[1]:0:$((${#array[1]}-1))})
if [ $((number)) -eq 0 ];then
 echo "there is noy any issue you can go ahead"
 echo "flag=false" >> "$GITHUB_ENV"
 echo "flag set to false"
else 
 echo "there is a SEVERITY.HIGH"
 echo "flag=true" >> "$GITHUB_ENV" 
 echo "flag set to true" 
fi

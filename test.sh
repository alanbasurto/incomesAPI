#!/usr/bin/env bash
array=($(grep '"SEVERITY.HIGH":' results.sarif))
number=(${array[1]:0:$((${#array[1]}-1))})
if [ $((number)) -eq 0 ];then
 echo "noissue"
 echo "FLAG=false" >> "$GITHUB_ENV"
 echo "FLAG set to false"
else 
 echo "there is a SEVERITY.HIGH"
 echo "FLAG=true" >> "$GITHUB_ENV" 
 echo "FLAG set to true" 
fi

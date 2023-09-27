#!/usr/bin/env bash
array=($(grep '"SEVERITY.HIGH":' results.sarif))
number=(${array[1]:0:$((${#array[1]}-1))})
if [ $((number)) -eq 0 ];then
 echo "noissue"
 echo "flag=false" >> "$GITHUB_ENV"
 echo "action_stateeee=red" >> "$GITHUB_ENV"
 echo "flag set to false"
else 
 echo "there is a SEVERITY.HIGH"
 echo "flag=true" >> "$GITHUB_ENV" 
 echo "flag set to true" 
 echo "action_stateeee=green" >> "$GITHUB_ENV"
fi

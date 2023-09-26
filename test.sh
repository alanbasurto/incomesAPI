#!/usr/bin/env bash
array=($(grep '"SEVERITY.HIGH":' data.sarif))
number=(${array[1]:0:$((${#array[1]}-1))})
if [ $((number)) -gt 0 ];then
echo "there is a SEVERITY.HIGH"
fi

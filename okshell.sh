#!/usr/bin/env bash

# okshell(){
while [ $# -ne 0 ];do
	opts=$(echo $1 | tr '=' ' ')
	opt=${opts[0]}
	eval on_${opt} ${opts[1]}
	shift
done
# }
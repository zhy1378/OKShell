#!/usr/bin/env bash

function function_exists(){
	FUNCTION_NAME=$1
	[ -z "$FUNCTION_NAME" ] && return 1
	declare -F "$FUNCTION_NAME" > /dev/null 2>&1
	return $?
}

while [ $# -ne 0 ];do
	opts=($(echo $1 | tr '=' ' '))
	if declare -f "on_${opts[0]}" &>/dev/null;then
		eval on_${opts[0]} ${opts[1]}
	fi
	shift
done
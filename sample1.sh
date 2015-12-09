#!/usr/bin/env bash
# Run this file:
# sample1.sh a=1 b=2 c

on_a(){
	echo a, $1
}

on_b(){
	echo b, $1
}

on_c(){
	echo $@
}

source okshell.sh
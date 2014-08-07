#!/bin/bash

install_environment(){
    npm install
    bower install --allow-root --config.interactive=false
}

BASE_PATH="/tuleap";

set -e

options=`getopt -o h -l path: -- "$@"`

eval set -- "$options"

while true
do
    case "$1" in
	--path)
	    path=$2;
	    shift 2;;
	--)
	    shift 1; break ;;
	*)
	    break ;;
    esac
done

if [ -n "$path" ]; then
    cd $BASE_PATH/$path
    install_environment
    grunt
else
    echo "You must specify --path argument"
fi

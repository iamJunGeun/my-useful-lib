#!/bin/sh

if [ ! -z "$1" ];then
	ROOT_PASSWORD="$1"
fi

if [ ! -z "$2" ];then
	FUNCTIONS="$2"
fi

if [ -z ${ROOT_PASSWORD} -o -z ${FUNCTIONS} ];then
	su root -c "./do_install_bin.sh"
else
	source ${FUNCTIONS}
	do_it_as_root_with_autopassword "./do_install_bin.sh" "${ROOT_PASSWORD}"
fi

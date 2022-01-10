#!/bin/sh

if [ -z "$1" ];then
	echo "Usage: $0 <root-password>"
	exit 0
fi

export ROOT_PASSWORD="$1"
export FUNCTIONS="${PWD}/functions"

# 중략

./install_bin.sh

# 중략

./install_lib.sh

# 중략

./install_doc.sh

# 중략

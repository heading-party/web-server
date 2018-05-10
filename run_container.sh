#!/bin/bash

if [[ $1 == '' ]]; then
	echo Please input version
fi

docker run -v `pwd`/code:/code -p 3000:3000 -d hyonzin/django:$1

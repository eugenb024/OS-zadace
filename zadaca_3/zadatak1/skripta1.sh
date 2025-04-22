#!/bin/bash

if [ "$#" -eq 1 ]; then
ABS_FILE_PATH="$1"
	if [[ -e "$1" && -f "$1" ]]; then
	echo "Datoteka postoji i ovo je njezin sadržaj"
	cat "$1"
	else
	echo "Datoteka ne postoji na putanji ili nije regularna datoteka"
	fi
else
echo "Potrebno je proslijediti točno jedan argument"
exit 1
fi

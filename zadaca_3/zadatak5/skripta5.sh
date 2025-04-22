
#!/bin/bash
if [ "$#" -eq 1 ]; then
	skripta="$(dirname "$0")"
	argument="$1"
	if [ -d "$skripta/$argument"  ]; then
	zip -r  svi_zapisi.zip "$skripta"/*
	echo "Uspješno komprimirano"
	else
	echo "Skripta se ne nalazi u istome direktoriju"
	exit 1
	fi
else
echo "Potrebno je unijeti jedan argument"
exit 1
fi

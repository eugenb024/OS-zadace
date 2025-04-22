#!/bin/bash
if [ "$#" -eq 2 ]; then
	ABS="$1"
	EK="$2"
	for datoteka in "$ABS"/*"$EK"; do
		if [ -f "$datoteka" ]; then
		echo "Datoteka je: $(basename "$datoteka")"
		else
		echo "Datoteka sa $EK ekstenzijom ne postoji na navedenoj putanji"
		exit 1
		fi
		done
else
echo "Potrebno je unjeti točno dva argumenta"
exit 1
fi 

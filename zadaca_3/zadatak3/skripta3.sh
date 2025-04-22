#!/bin/bash
if [ "$#" -eq 1 ]; then
	broj="$1"	
	if [[ "$broj" -ge 1 && "$broj" -le 10 ]]; then
		touch brojevi.txt
		for ((i=1; i<$broj; i++)); do
		echo "$i" >> brojevi.txt
		done
	else
	echo "Potrebno je unjeti broj u rasponu od 1 do 10"
	exit 1
	fi
else 
echo "Potrebno je unjeti točno jedan argument"
exit 1
fi

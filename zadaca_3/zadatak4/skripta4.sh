#!/bin/bash
abs=$(pwd)/screenshots
brojac=1
for datoteka in "$abs"/*; do
	ime_dat=$(basename "$datoteka")
	novo_ime="screenshot_${brojac}_$ime_dat"
	mv "$datoteka" "$abs/$novo_ime"
	((brojac++))
	done

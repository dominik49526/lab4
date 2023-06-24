#!/bin/bash

wyswietl_date=false
sto_logow=false

for flagi in "$@"; do
    case $flagi in
        --date) wyswietl_date=true ;;
        --logs) sto_logow=true ;;
    esac
done

if $wyswietl_date; then
    aktualna_data=$(date)
    echo "Aktualna data: $aktualna_data"
fi

if $sto_logow; then
    for ((i=1; i<=100; i++))
    do
        nazwa_pliku="log${i}.txt"
        echo "$nazwa_pliku $(date)" > "$nazwa_pliku"
    done
fi

touch .gitignore
echo "*log*" > .gitignore

#

wyswietl_date=false

for flagi in "$@"; do
    case $flagi in
        --date) wyswietl_date=true ;;
    esac
done

if $wyswietl_date; then
    aktualna_data=$(date)
    echo "Aktualna data: $aktualna_data"
fi

touch .gitignore
echo "*log*" > .gitignore

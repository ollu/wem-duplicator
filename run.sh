#/bin/bash
clear
read -r -d '' LOGO <<'EOF'
######################################################
#                                                    #
#                  SUPER DUPLICATOR                  #
#                    BY WMD & OKL                    #
#                       © 2021                       #
#                                                    #
######################################################
\n
EOF
echo "$LOGO"

echo "👨‍🔬 Jag behöver en sökväg till ljudfilen: "
read -e AUDIOPATH

if [ ! -f "$AUDIOPATH" ]
then
  echo "⚠️  Filen:"
  echo " $AUDIOPATH"
  echo "finns inte eller är inte en absolut sökväg."
  echo "Kontrollera och försök igen!"
  break
fi

clear
echo "$LOGO"
echo "👨‍🔬 Skriv in sökväg till katalog med filer som du vill "
echo "använda som namn på den nya: "
read -e FILESPATH

if [ ! -d "$FILESPATH" ]; then
  echo "⚠️  Sökvägen: $FILESPATH finns inte eller är inte en "
  echo "absolut sökväg. Kontrollera och försök igen!"
fi

# use nullglob in case there are no matching files
shopt -s nullglob

`mkdir output`

FILES=($(ls $FILESPATH))

for f in "${FILES[@]}"; do
   `cp $AUDIOPATH ./output/$f`
done

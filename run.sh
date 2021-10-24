#/bin/bash
clear
read -r -d '' LOGO <<'EOF'
######################################################
#                                                    #
#                  SUPER DUPLICATER                  #
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

clear
echo "$LOGO"
echo "Namn på fil:"
echo $AUDIOPATH
echo "Katalog med filnamn:"
echo $FILESPATH

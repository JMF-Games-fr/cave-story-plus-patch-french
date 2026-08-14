#!/bin/sh

DEFAULTPATH="/home/$USER/.steam/steam/steamapps/common/Cave Story+"

clear
echo "Bienvenue dans l'installation du patch FR de Cave Story+ pour linux !"
echo "Tapez ici le chemin où se trouve l'install de Cave Story+ sur votre PC. Si vous utilisez la version Steam et que vous ne l'avez pas installé dans un dossier 'SteamLibrary', appuyez directement sur [ENTREE]:"

read INSTALLPATH

if [ "$INSTALLPATH" == "" ]; then 
   INSTALLPATH=$DEFAULTPATH 
fi

# I CAN'T BELIEVE I MUST PUT THIS. F*** YOU BASH...
IFS='' # disable splitting

for f in $INSTALLPATH # here we're not quoting the variable so
                       # we're invoking the split+glob operator.
do
  printf '%s\n' "$f" # avoid the non-reliable, non-portable "echo"
done

PROGRAMPATH="${INSTALLPATH[@]}"/CaveStory+

if [ -f $PROGRAMPATH ]; then
   clear
   echo "Programme trouvé. Installation du patch."
   cp -rv data $INSTALLPATH
   echo "Installation terminée. Bon jeu !"
   exit
else
   clear
   echo "ERREUR: Le programme du jeu n'a pas été trouvé."
   echo "Relancez l'installation en vérifiant bien le chemin du jeu."
   echo "Chemin entré :" $INSTALLPATH
   exit
fi

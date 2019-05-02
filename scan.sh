#!/bin/bash

#On veut séparer le for par ligne et pas par mot 
IFS=$'\n'

if test -f include.tex
then
    rm include.tex
fi

function concat { 
prefixe=$1
for foldersel in `find $prefixe -maxdepth 1 -mindepth 1 -type d ! -name '.*' | sed -e "s/$prefixe\///g"`
do
    echo \\chapitre{$foldersel}>>include.tex
    I=0
    for recette in `ls -1 "$prefixe/$foldersel/" | grep \\.tex `
      do 
      if [ $I -eq 1 ] ; then 
        echo \\barre >> include.tex 
      fi ;
      I=1 
      cat "$prefixe/$foldersel/$recette" >> include.tex 
    done
done
}

echo \\part*{Recettes salées} >> include.tex
echo \\addcontentsline{toc}{part}{Recettes salées} >> include.tex

concat "sel"

echo \\part*{Recettes sucrées} >> include.tex
echo \\addcontentsline{toc}{part}{Recettes sucrées} >> include.tex

concat "sucre" 

echo \\part*{Mixtures} >> include.tex
echo \\addcontentsline{toc}{part}{Mixtures} >> include.tex

concat "mixtures"

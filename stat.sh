#!/bin/bash
afficherT()
{ #taille totale occupée
df -h
}
affichert()
{ #taille occupée par les fichiers/repertoires
du -sh
}
afficherN()
{ #nbre de fichier non vide
find . -type f ! -empty | wc -l
}
affichers()
{ #nbre de fichier vide
find . -type f -empty| wc -l
}
afficherd() 
{ #nbre de fichier python...
echo "fichier html:"
ls -lRrt | grep "\.html" | wc -l
echo "fichier php"
ls -lRrt | grep "\.php" | wc -l
echo "fichier python"
ls -lRrt | grep "\.Python" | wc -l
echo "fichier sh"
ls -lRrt | grep "\.sh" | wc -l
}
afficherh()
{
#help
echo "help"
cat /home/hela/projet13.sh/help.txt

}

affichermenu()
{ #menu
 echo "
1-afficher taille totale occupée
2-afficher taille occupée par les fichiers/repertoires
3-afficher nbre de fichier non vide
4-afficher nbre de fichier vide
5-afficher nbre de fichier python,html,txt,..
6-afficher help
7-afficher nom des auteurs et version du code
8-afficher nbre de petit fichiers et gros fichiers"
echo "entrer votre reponse :"
read -r rep
if [ "$rep" == 1 ]; then
afficherT
elif [ "$rep" == 2 ]; then
affichert
elif [ "$rep" == 3 ]; then
afficherN
elif [ "$rep" == 4 ]; then
affichers
elif [ "$rep" == 5 ]; then
afficherd
elif [ "$rep" == 6 ]; then
afficherh
elif [ "$rep" == 7 ]; then
afficherv
elif [ "$rep" == 8 ]; then
affichern
fi
}

afficherv()
{ #nom des auteurs et version du code
echo "v1.0"
echo "-------------------"
echo "by Moalla Hela et Khemakhem Youssef"
}

affichern()
{ #nbre de petit fichiers et gros fichiers
echo "fichier de taille moins de 512k"
find . -size -512k
echo "fichier de taille plus de 100c"
find . -size +100c
}
show_usage()
{
echo "statistic_file :[-h|--help] [-T] [-t] [-n] [-N] [-d] [-m] [-s] chemin.."
}

menugraphique()
{
while : 
do
yad --title='MENU' --text="choisir une option" \--button='afficher taille totale occupée':1 \--button='afficher taille occupée par les fichiers/repertoires':2 \--button='afficher nbre de fichier non vide':3 \--button='afficher nbre de fichier vide':4 \--button='afficher nbre de fichier python,html,txt,..':5 \--button='afficher help':6 \--button='afficher nom des auteurs et version du code':7 \--button='afficher nbre de petit fichiers et gros fichiers':8 \--button='Menu textuelle':9 \--button='quitter':10
retour=$?
case $retour in 
1) 
afficherT
;;
2) 
affichert
;;
3) 
afficherN
;;
4)
affichers
;;
5) 
afficherd
;;
6) 
afficherh
;;
7) 
afficherv
;;
8) 
affichern
;;
9)
affichermenu
;;
10) exit 0 
;;
esac
done

}

statistic()
{ echo "STATISTIQUE "
echo "-fichier :" 
find ./ -type f | wc -l
echo "-nbre de fichier non vide:"
find . -type f ! -empty | wc -l
echo "-nbre de fichier vide:"
find . -type f -empty| wc -l
echo "-fichier de taille moins de 512k"
find . -size -512k | wc -l
echo "-fichier de taille plus de 100c"
find . -size +100c | wc -l
echo "-repertoire :" 
find ./ -type d | wc -l
echo "-sous_repertoire:"
ls -d . * | wc -l
}


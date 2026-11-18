#!/bin/bash
# Jeu : deviner le nombre de fichiers du répertoire actuel

function nb_fichiers {
    ls -1 | wc -l
}

reponse=$(nb_fichiers)
essai=-1

echo "Bienvenue dans le jeu de devinette !"
echo "Combien de fichiers y a-t-il dans le répertoire actuel ?"

while [[ $essai -ne $reponse ]]
do
    read -p "Votre estimation : " essai

    if ! [[ $essai =~ ^[0-9]+$ ]]
    then
        echo "Veuillez entrer un nombre entier."
        essai=-1
    elif [[ $essai -lt $reponse ]]
    then
        echo "Trop bas, réessayez."
    elif [[ $essai -gt $reponse ]]
    then
        echo "Trop haut, réessayez."
    else
        echo "Bravo ! Vous avez trouvé le bon nombre : $reponse fichiers."
    fi
done
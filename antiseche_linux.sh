# le rendre executable chmod +x NOM.sh
#toujours commencer par 
#!/bin/bash

ls
mkdir Salut




#VARIABLE 
message='Bonjour tout le monde'
#la variable a pour nom message ;
#… et pour valeur Bonjour tout le monde.
#afficher une variable
echo $message
#POUR SAUT DE LIGNE 

#Si vous voulez insérer des retours à la ligne, il faudra activer le paramètre -e et utiliser le symbole \n :



#NOM read NOM, on tape test.sh ensuite on tape le nom qui fera tout le reste dans le script
#echo "Bonjour $nom !"

# read -p 'Entrez votre nom : ' nom /phrase affiché
#echo "Bonjour $nom !"

#limiter nombre caractère read -p 'Entrez votre login (5 caractères max) : ' -n 5 nom
#limiter temps read -p 'Entrez le code de désamorçage de la bombe (vous avez 5 secondes) : '  -t 5 code
#pas afficher lettre tapées read -p 'Entrez votre mot de passe : ' -s pass


#CONDITION
if [ $1 = "Bruno" ]
then
        echo "Salut Bruno !"
elif [ $1 = "Michel" ]
then
        echo "Bien le bonjour Michel"
elif [ $1 = "Jean" ]
then
        echo "Hé Jean, ça va ?"
else
        echo "J'te connais pas, ouste !"
fi

while [ test ]
do
        echo 'Action en boucle'
done



#retour d'une commande dans une variable
nom=$(head -n 1 /root/Desktop/liste_nom)

#supprime ligne 1 à 5 dans un fichier le caractère $ est la dernière ligne
sed '1,5d' test_h

#compte ligne
cat nom_fichier | wc -l

#couper une ligne command cut
Par exemple, si vous souhaitez conserver uniquement les caractères 2 à 5 de chaque ligne du fichier, vous taperez
$ cut -c 2-5 noms.txt 

#commande more
    diff version1 version2 | more

#openssl: on crypt le mot secret en base64 avec openssl //tape openssl pour connaitre les différent type de cryptage
$ echo -n "secret" | openssl enc -base64
#pour décrypter on met -d
$ echo "c2VjcmV0" | openssl enc -base64 -d
#pour les fichier// on le code en base 64 le fichier fic1.enc et on met le chiffré dans fic1.dec
//-d pour décoder
openssl enc -base64 -d -in fic1.enc -out fic1.dec

#pour avoir la colone 7 et la colone 10  séparer par un espace
gawk '{}{print $7 " " $10}' sortie_speed_aes 

#nombre aléatoire
echo $RANDOM

#doublons dans fichier
uniq -c nom_fichier #affiche le nombre de chaque occurence



./john --incremental=All --stdout | aircrack-ng -b 00:1A:2B:3B:CA:99 -w - /root/test-01.cap

#verifier si une variale est vide
if [ "$1" =="" ]; then 

#vérifier si le fichier est là
if [ -f "$1" ];
	then
		echo "il est là"
	else 
		echo "fichier not found"
	fi

aircrack-ng -w /root/Desktop/dico/abbr.txt "/root/$nom"
aircrack-ng -w /root/Desktop/dico/acr-diag.txt "/root/$nom"
aircrack-ng -w /root/Desktop/dico/aeneid.txt "/root/$nom"
aircrack-ng -w /root/Desktop/dico/afr_dbf.txt "/root/$nom"
aircrack-ng -w /root/Desktop/dico/Aircrack_passwords.txt "/root/$nom"
aircrack-ng -w /root/Desktop/dico/Aircrack_passwords.txt "/root/$nom"
aircrack-ng -w /root/Desktop/dico/dico.txt "/root/$nom"
aircrack-ng -w /root/Desktop/dico/dico.txt "/root/$nom"
aircrack-ng -w /root/Desktop/dico/dico.txt "/root/$nom"
aircrack-ng -w /root/Desktop/dico/dico.txt "/root/$nom"

./john --incremental=alnum --stdout=6 > dico.lst

#!/usr/bin/env perl
# Ces instructions rendent Perl moins permissif
use strict;
use warnings;

print "Hello, World!";  # Affiche "Hello, World!" dans la console
<>; # Met le programme en pause jusqu'à ce que l'utilisateur appuie
    # sur la touche "Entrée"

#VARIABLE//////////////////////////////////////////////////////////////
my $nom;
$nom = "Perl";

print "bla" x 10;#affiche dix  fois bla

my $chaine = "coolympique";
my $longueur = length $chaine;#$longueur vaut le nombre de lettre de $chaine


#my $nom = <>; # Récupération du nom de l'utilisateur
#chomp $nom;   # Retrait du saut de ligne


#(print "coucou entrez la punition\n";
#my $punition = <>;
#print "combien de fois?\n";
#my $nombre = <>;
#print "$punition" x "$nombre\n";)*/

#OPERATION SUR LES CHAINES DE CARACTERES////////////////////////////////////////////////
#$a lt $b 	$a est plus petite que $b 	lesser than (plus petit)
#$a gt $b 	$a est plus grande que $b 	greater than (plus grand)
#$a eq $b 	$a est égale à $b 	equals
#$a ne $b 	$a est différente de $b 	not equal
#$a le $b 	$a est inférieure ou égale à $b 	lesser or equal
#$a ge $b 	$a est supérieure ou égale à $b 	greater or equal

#CONDITIONS /////////////////////////////////////////////////
use strict;
use warnings;

print "Entrez le mot de passe : ";
my $pass = <>;
chomp $pass;

if ($pass eq "s'il te plait")
{
    print "Accès autorisé.\n";
    print "Bienvenue, Jean.\n";
}
elsif ($pass eq "sesame ouvre-toi")
{
    print "Accès autorisé.\n";
    print "Bienvenue, Marie.\n";
}
else
{
    print "Accès refusé.\n";
    print "Allez vous faire voir !\n";
}

@tablo = (1, 2, 3, "foo", 4, "bar");
#Et une boucle une ! 
foreach $valeur (@tablo){
        #Au passage, faisons une petite concaténation
        print $valeur."\t";
}
#Accès à une valeur particulière
print "\nEt si je veux la 4ème valeur du tableau ?\n";
print "La 4ème valeur du tableau est $tablo[3]\n";

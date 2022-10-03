
## Transformation
Le but de la transformation est d'éviter de dupliquer tous les entêtes et pieds de pages communs à toutes les pages. Pour cela, on va isoler dans 2 fichiers le contenu de l'entête et du pied de page, et on va modifier les pages existantes pour enlever ces 2 parties redondantes.


Ensuite, *avant* de pousser le code sur Github, on lancera un script qui se chargera d'assembler chaque page et de la déposer dans un répertoire dédié : ``/docs``

## Comment faire ?
1. Créer un répertoire /docs.
2. Modifier *Github pages* pour lui indiquer que ce répertoire sera la base pour les pages web :
   Aller dans *Settings* / *Pages* et remplacer ``/(root)`` par ``/docs`` dans le choix déroulant.
3. Si besoin, modifier aussi le serveur local vers ce nouveau répertoire.

## Après ?
1. Déplacer les 3 répertoires suivants dans /docs :  ``css, js, img``
2. Déplacer le fichier CNAME dans /docs
3. Créer un répertoire /src
4. Déplacer les fichiers HTML dans /src, éditer chaque fichier pour enlever l'entête et le pied de page commun.

## On continue ...
1. Créer un fichier 01.HEADER.html (au même niveau que README.md), l'éditer pour qu'il contienne l'entête commun à toutes les pages.
2. Créer un fichier 02.FOOTER.html (au même niveau que README.md),l'éditer pour qu'il contienne le pied de page commun à toutes les pages.
Ce sont ces 2 fichiers qu'il suffira de modifier si on doit procéder à une modification globale des entêtes/pieds de page.
3. Modifier le script build.site.cmd pour indiquer la liste des pages 



## Enfin :
1. Avant chaque déploiement sur Git, lancer le script build.site.cmd
Ce script va construire dans le répertoire /docs les fichiers complêts et les déposer dans /docs.

A chaque déploiement, Lancer le script :
```
build.site.cmd
```

REMARQUE : 
Les 3 dernières lignes permettent d'enchainer le push sur Git sans action manuelles, mais le message de commit sera toujours le même 😒😒
On peut commenter (REM) ces 3 lignes si on veut garder le controle manuel sur gitlab.

## Link
[laurentmaes](https://laurentmaes.github.io/hello-world/)

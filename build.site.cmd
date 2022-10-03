@ECHO OFF
CLS

REM 1. On indique le nom du fichier HTML dans la variable FILE
REM 2. On lance la copie
REM 
REM 3. On répête l'opératon pour chaque fichier

SET FILE=index.html
COPY 01.HEADER.html+src\%FILE%+02.FOOTER.html docs\%FILE%

SET FILE=projet.html
COPY 01.HEADER.html+src\%FILE%+02.FOOTER.html docs\%FILE%

SET FILE=contact.html
COPY 01.HEADER.html+src\%FILE%+02.FOOTER.html docs\%FILE%

REM Dupliquer les 2 lignes ci-dessus pour chaque fichier à reconstruire


REM Si on veut pousser automatiquement sur Gitlab :

git add .
git commit -m "Modif"
git push

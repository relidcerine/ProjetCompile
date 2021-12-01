%{
    #include "syntaxique.tab.h"
    int nb_ligne = 1;
%}

lettreM [A-Z]
lettre [a-zA-Z]
chiffre [0-9]
IDF {lettre}({lettre}|{chiffre})*
cst {chiffre}+
%%

CODE {printf("Lentite reconnue");return mc_code;}
START { printf("Lentite reconnue");return mc_start;}
";" { printf("Lentite reconnue");return pvg;}
"," { printf("Lentite reconnue");return vrg;}
"INTEGER" { printf("Lentite reconnue");return mc_int;}
"END." { printf("Lentite reconnue");return mc_end;}
real { printf("Lentite reconnue");return mc_real;}
[idf] {printf("Lentite reconnue");return idf;}
[ \t]
\n   { nb_ligne++;}
. printf("erreur lexicale à la ligne %d \n",nb_ligne);return err

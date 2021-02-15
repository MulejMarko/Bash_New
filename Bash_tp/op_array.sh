#!/bin/bash

#helper array out function
function array_out {
    for e in $@; do
        printf "$e, "
    done
    printf "\n"
}

#first example
fName[0]="Zara"
fName[1]="Qadir"
fName[2]="Mahnaz"
fName[3]="Ayan"
fName[4]="Daisy"

array_out ${fName[@]}

#second example
sName=( "Zara" "Qadir" "Mahnaz" "Ayan" "Daisy" )
array_out ${fName[*]}
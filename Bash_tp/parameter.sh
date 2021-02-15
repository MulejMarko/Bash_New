#!/bin/sh

echo "File Name: $0"
echo "First Parameter : $1"
echo "Second Parameter : $2"
echo "Quoted Values: $@"
echo "Quoted Values: $*"
echo "Total Number of Parameters : $#"

echo "Let us test the diference between \$@ and \$*:"
echo "\$* output is:" 
echo "$*"
echo "and a \"\$*\" output is:" 
echo ""$*""
echo "\$@ output is:" 
echo "$@"
echo "\"\$@\" output is:" 
echo ""$@""

a=$(( 800*25*5 ))
a=$(( $a/1000000 ))
echo $a
b=$(( $a*640 ))
echo "weight of a beam is: $b kg."
#!/bin/bash
clear

# Calling one function from another
function fibonachi {
    a=$(( $1+$2 ))
    if [ $a -gt 1000000 ]; then
        printf "\n"
        return 1
    fi
    printf "$a "
    fibonachi $2 $a
}


# Calling function one.
printf "Let us start a fibonachy series:\n"
printf "1 1 "
fibonachi 1 1
printf "I hope you liked it. :-)\n"

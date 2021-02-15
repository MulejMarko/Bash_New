#!/bin/bash
clear

function about {
    printf "This is a loop demonstration program. It demonstrates seferal loops.\n"
    printf "The Idea is to give it a parameter that will determine what demonstration you would like to see.\n"
    printf "The first parameter determines the loop kind:\n"
    printf "0 = about text\n"
    printf "1 = while loop\n"
    printf "2 = for loop\n"
    printf "3 = until loop\n"
    printf "4 = select loop\n"
    printf "5 = nested loop\n"
    printf "(an optional second parameter feeds magnitude to the loop)\n"
}

#run main

#magnitude setting
if [ $# -gt 1 ]; then
    if [ $2 -eq $2 ]; then
        mag=$2
    else
        mag=3
    fi
else
    mag=3
fi

#loop selection
case $1 in 
    1) 
        while [ $mag -lt 10 ]
        do
        echo $mag
        mag=`expr $mag + 1`
        done
        ;; 
    2) 
        for var in 0 1 2 3 4 5 6 7 8 9
        do
        echo $var
        done

        for FILE in $HOME/.bash*
        do
        echo $FILE
        done
        ;;
    3) 
        until [ ! $mag -lt 10 ]
        do
        echo $mag
        mag=`expr $mag + 1`
        done
        ;; 
    4) 
        select DRINK in tea cofee water juice appe all none
        do
        case $DRINK in
            tea|cofee|water|all) 
                echo "Go to canteen"
                ;;
            juice|appe)
                echo "Available at home"
            ;;
            none) 
                break 
            ;;
            *) echo "ERROR: Invalid selection" 
            ;;
        esac
        done
        ;; 
    5)
        while [ "$mag" -lt 10 ]    # this is loop1
        do
            b="$mag"
            while [ "$b" -ge 0 ]  # this is loop2
            do
                echo -n "$b "
                b=`expr $b - 1`
            done
            echo
            mag=`expr $mag + 1`
        done
        ;;
    *)  
        about
        exit 1 # Command to come out of the program with status 1
        ;; 
esac 
echo $mag
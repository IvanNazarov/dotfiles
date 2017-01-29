#!/bin/bash

PS3='Please enter your choice: '
options=("Python lessons" "Option 2" "Option 3" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Python lessons")
            echo "you chose choice 1"
            break
            ;;
        "Option 2")
            echo "you chose choice 2"
            ;;
        "Option 3")
            echo "you chose choice 3"
            ;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done

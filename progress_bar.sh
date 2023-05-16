#!/bin/bash

# print a progress bar

function progress_bar()
{
    i=0
    bar=''
    index=0
    arr=("|" "/" "-" "\\")
    while [ $i -le 100 ]
    do
        ((index = index % 4, l=0))
        printf "\e[43;46;1m%c\e[0m %-100s %3d%%\r" "${arr[$index]}" "$bar" "$i"
        ((i++, index++))
        usleep 30000
        bar+='#'
    done
    printf "\n"
}


progress_bar


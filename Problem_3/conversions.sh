#!/bin/bash


while true; do
    #Ask the user for a decimal number
    read -p "Please enter a decimal number smaller than 100000: " number

    #Check if the input is empty
    if [ -z "$number" ]; then
        echo "Error: No input provided."
        
    #Check if the input is a valid number
    elif ! [[ $number =~ ^[0-9]+$ ]]; then
        echo "Error: Invalid input. Please enter a valid decimal number."
    
    #Check if the number is smaller than 100000
    elif [ $number -ge 100000 ]; then
        echo "Error: Number is too large."
        
        
    else
        #Break the loop if the input is valid
        break
        
    fi
done

echo "You entered: $number"

#Convert the decimal number to binary
binary=""
bnum=$number

#While loop for conversion
while [ $bnum -gt 0 ]; do
    remainder=$((bnum % 2)) #Checks remainder after division by 2
    binary=$remainder$binary #Adds the remainder to the binary number
    bnum=$((bnum / 2)) #Divides the number by 2
done
echo "Binary: $binary"

#Convert the decimal number to hexadecimal
hexadecimal=""
hnum=$number
#While loop for conversion
while [ $hnum -gt 0 ]; do
    remainder=$((hnum % 16)) #Checks remainder after division by 16
    #Assigns remainder to A-F if it is greater than 9
    case $remainder in
        10) remainder="A";;
        11) remainder="B";;
        12) remainder="C";;
        13) remainder="D";;
        14) remainder="E";;
        15) remainder="F";;
    esac
    hexadecimal=$remainder$hexadecimal #Adds the remainder to the hexadecimal number
    hnum=$((hnum / 16)) #Divides the number by 16
done
echo "Hexadecimal: $hexadecimal"
#! /bin/bash
echo ""
echo "##################################"
echo "###    Math Table Generator    ###"
echo "##################################"
echo ""
echo "Please enter the symbol of the operator you wish to use:"
echo " - For addition, enter: +"
echo " - For subtraction, enter: -"
echo " - For multiplication, enter: *"
echo " - For division, enter: /"
echo " - For exponent, enter: ^"
read o
echo ""
echo "Please choose a number, ranging from 1 to 15:"
read n
echo ""
if [[ "$o" = + && $n -le 15 && $n -gt 0 ]]
then
        i=1
        while [ $i -le 15 ]
        do
                echo "$n + $i = $(expr $n + $i)"
                ((i++))
        done
        echo ""

elif [[ "$o" = - && $n -le 15 && $n -gt 0 ]]
then
        i=1
        while [ $i -le 15 ]
        do
                echo "$n - $i = $(expr $n - $i)"
                ((i++))
        done
        echo ""

elif [[ "$o" = \* && $n -le 15 && $n -gt 0 ]]
then
        i=1
        while [ $i -le 15 ]
        do
                echo "$n * $i = $(expr $n \* $i )"
                ((i++))
        done
        echo ""

elif [[ "$o" = / && $n -le 15 && $n -gt 0 ]]
then
        i=1
        while [ $i -le 15 ]
        do
                printf "$n / $i = "
                printf %.3f "$((10**3 * $n / $i))e-3"
                echo ""
                ((i++))
        done
        echo ""

elif [[ "$o" = ^ && $n -le 15 && $n -gt 0 ]]
then
        i=1
        while [ $i -le 15 ]
        do
                echo "$n ^ $i = $(($n ** $i))"
                ((i++))
        done
        echo ""
else
        echo "Invalid input, please try again :)"
fi
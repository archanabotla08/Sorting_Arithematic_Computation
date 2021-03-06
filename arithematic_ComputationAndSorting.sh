#!/bin/bash -x
read -p "Enter First Number" firstNumber
read -p "Enter Second Number" secondNumber
read -p "Enter Third Number" thirdNumber
ExpressionResult_1=$(( firstNumber + secondNumber * thirdNumber ))
ExpressionResult_2=$(( firstNumber * secondNumber + thirdNumber ))
ExpressionResult_3=$(( thirdNumber * firstNumber / secondNumber ))
ExpressionResult_4=$(( firstNumber % secondNumber + thirdNumber ))

declare -A ExpressionResult
ExpressionResult[ExpressionResult_1]=$ExpressionResult_1
ExpressionResult[ExpressionResult_2]=$ExpressionResult_2
ExpressionResult[ExpressionResult_3]=$ExpressionResult_3
ExpressionResult[ExpressionResult_4]=$ExpressionResult_4

counter=0
for i in "${ExpressionResult[@]}"
do
        ResultArray[((counter++))]=$i
done

echo "SORTED Result Array in Descending Order: " ${ResultArray[@]} | tr " " "\n" | sort -nr | tr "\n" " "
echo "SORTED Result Array in Ascending Order: " ${ResultArray[@]} | tr " " "\n" | sort -n | tr "\n" " "


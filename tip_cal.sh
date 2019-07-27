#!/bin/bash


echo -n "Enter the total before tip: "
read total

echo -n "What is the percentage you would like to tip? "
read tip_request

percentage=.01

tip_conv=$(awk -v tip_request="${tip_request}" -v percentage="${percentage}" 'BEGIN{print (tip_request*percentage)}')
#echo $tip_conv


tip_amount=$(awk -v total="${total}" -v tip_conv="${tip_conv}" 'BEGIN{print (total*tip_conv)}')
#echo $tip_amount


total_with_tip=$(awk -v total="${total}" -v tip_amount="${tip_amount}" 'BEGIN{print (total+tip_amount)}')
echo "Your new total with tip is $"$total_with_tip". We hope you enjoyed your meal."

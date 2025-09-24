#!/bin/bash
#File:user_input.sh
#Purpose: Interactive script with user input

echo "=== Personal information collector ==="
echo ""

#Get user input
read -p "Enter your name: " name
read -p "Enter your age: " age
read -p "Enter your favorite programming langauge: " language

#Validate input (check if name is not empty)
if [ -z "$name" ]; then
        echo "Error: Name cannot be emoty!"
        exit 1
fi

# Display collected information
echo ""
echo "=== Your infomation ==="

echo "Name: $name"
echo "Age: $age years old"
echo "Favorite Langauge: $language"
echo ""

#Age-based conditional messages
if [ "$age" -lt 18 ]; then
        echo "You're quite young! Keep learning!"
elif [ "$age" -ge 18 ]  && [ "$age" -le 30 ]; then
    echo "Great age to master new technologies!"
fi

echo ""
echo "Nice to meet you, $name! Happy coding with $language!"

#Explaination:
#read -p "prompt" variable - Displays prompt and reads input
# [ -z "$name" ] - Tests if variable is empty (zero length)
# exit 1 - exits script with error code 1
# [ "$age" -lt 18] -Numeric comparison (less than)
# && - Logical AND operator 
# elif. - Else if condition

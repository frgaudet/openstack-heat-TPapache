#!/bin/bash
# Parse CSV studient file to build a json data structure

input="TD2.csv"
while IFS= read -r var
do
    nom=$(echo $var | cut -d ";" -f 1)
    email=$(echo $var | cut -d ";" -f 3)

    # Trim space
    email=$(echo $email | tr -d '[:space:]')

    # Replace Spaces with underscores
    item=$(echo $nom | sed -e 's/[[:space:]]/_/g' )

    echo -e "{ \"name\": \"$item\",\"email\":\"$email\"},"
done < "$input"

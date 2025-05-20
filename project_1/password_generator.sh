#! /bin/bash

echo "Welcome to password generator"

echo  - p "Please enter the length of the password" : password_length

if ! [[ $password_length  =~ ^[0-9]+$ ]];
then 
    echo " Error: Please enter a valid number for the password length. "
    exit 1
fi

# creating an array name password to capture generated password
password=()

for p in $(seq 1 $password_length);
do 
    passwords+=("$(openssl rand -base64 48 | cut -c1-$PASS_LENGTH )")
done


#Display generated passwords
echo "Here are the generated passwords:"
printf "%s\n" "${passwords[@]}"

# Ask user if they want to save the passwords to a file
echo "Do you want to save these passwords to a file? (y/n)"
read  choice
if [ "$choice" = "y" ]; then

      #Encrypt passwords before saving
        for password in "${passwords[@]}"; do
            # Encrypt each password using ccrypt and store in the file
            echo "$password" | ccrypt -e -K "$PASSPHRASE" > "passwords.txt.cpt"
        done

    echo "Passwords saved securely to passwords.txt.cpt"
       #printf "%s\n" "${passwords[@]}" >>passwords.txt.cpt

elif [ "$choice" = "n" ]; then
     echo "Passwords not saved."
fi


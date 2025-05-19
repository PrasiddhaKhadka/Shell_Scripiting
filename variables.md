# Bash Script: User Input and User Creation

This script demonstrates the following concepts in Bash:

- Single-line and multiline comments
- Variable assignment and usage
- Reading user input
- Adding a user to the Linux system

---


## ⚽️🔹 Comments in Bash

```bash
# THIS IS A SINGLE LINE COMMENT IN BASH
<< comment 
this is a 
multiline comment in bash 
comment

⚽️🔹 Working with Variables

name="Mike"
echo "Hey! This is $name and date is $(date)"



⚽️🔹 Reading User Input

echo "Enter the user name: "
read username
echo "The username is $username"

read -p "Enter your name: " username
echo "Your name is $username"




⚽️ 🔹 Adding a User in Linux

read -p "Enter your name: " username
echo "Your name is $username"
sudo useradd -m $username
echo "User has been added successfully"


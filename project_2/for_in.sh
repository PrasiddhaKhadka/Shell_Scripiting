#! /bin/bash

<< comment
Author: Prasiddha Khadka
This is to understand the password policy checker
comment

if [[ $(id -u) -ne 0 ]]; then
    echo "This script must be run as root"
    exit 1
fi

# Display the password policy
echo "Password Policy:"
echo "----------------"
grep -E "PASS_MAX_DAYS|PASS_MIN_DAYS|PASS_MIN_LEN|PASS_WARN_AGE" /etc/login.defs

<< comment
# -E  means extended regular expression
yedi -E garena vani by default basic maw jancha 
so afuay lay nai yo garnu parcha 
grep "Pass_Max_Days\|Pass_Min_Days" /etc/login.defs
\ ==> WHICH MEANS YOU MUST ESCAPE BEFORE LEAVING IT 
comment 


# Display password complexity settings
echo "Password Complexity Settings:"
echo "------------------"
grep -E "minlen|minclass" /etc/security/pwquality.conf
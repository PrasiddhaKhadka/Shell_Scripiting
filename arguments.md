# Bash Script: Understanding Command-Line Arguments

This document explains how to use **positional parameters** like `$0`, `$1`, etc., in a Bash script.

---

## 🔹 Bash Script Example

```bash
#!/bin/bash

echo "The username is"
echo "The character is $0 $1"


🔹 How to Save and Exit in Vim
Use the following to save and quit when editing the file in vim:


:wq
🔹 Running the Script
To execute the script with an argument:

./filename.sh Prasiddha
✅ Expected Output:

The username is
The character is ./filename.sh Prasiddha
This means:

$0 = ./filename.sh

$1 = Prasiddha

Use $0, $1, $2, etc., to access arguments passed to your script.

$0 always refers to the script name.

Be careful with typos (echo instead of echot).

Always give executable permission to your script if needed:

```
chmod +x filename.sh
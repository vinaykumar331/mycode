#!/bin/bash
read -p "Enter The username:" USERNAME
EXISTSUSER=$(cat /etc/passwd | grep -w $USERNAME | cut -d ":" -f 1)
if [ "$USERNAME" = "$EXISTSUSER" ]
then
echo "$USERNAME Exists"
else
echo "Lets create a user"
fi

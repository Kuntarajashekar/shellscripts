while true
do
read -p "Please Enter The User Name:" USERNAME
if [ -z $USERNAME ]; then
    echo "Please Enter A Valid Input."
else
    EXUSER=$(cat /etc/passwd | grep -w $USERNAME | cut -d ":" -f 1)
    SPEC=$(echo '!@#$%^&*()_' | fold -w1 | shuf | head -1)
    PASSWORD=India@${RANDOM}${SPEC}
    if [ "$USERNAME" = "$EXUSER" ]; then
        echo "User $USERNAME exists. Try diffrent name."
    else
        echo "Lets Create User $USERNAME"
        useradd -m ${USERNAME}
        echo "${USERNAME}:${PASSWORD}" | sudo chpasswd
        passwd -e ${USERNAME}
        #Print the USername and Password.
        echo "Username is ${USERNAME}  Password is ${PASSWORD} "
    fi
fi
exit
done

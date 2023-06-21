read -p  "Enter The Login Name:" username
read -sp "Enter The Password:" password

if [[ $username == "user"  && $password == "password" ]]
then
  echo -e "\nYou're Logged In\n"
elif [ $username != "user" ] 
then
  echo -e "\nInvalid User Name\n"
else
  echo -e "Invalid Password\n"
fi


output:
Enter The Login Name:user
Enter The Password:
You're Logged In




or

Enter The Login Name:Aswathy
Enter The Password:
Invalid User Name

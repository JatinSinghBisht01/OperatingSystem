#Program to check if a login is connected

echo "Enter the username:"
read user

if who | grep -qw "$user"; then
  echo "User $user is connected."
else
  echo "User $user is not connected."
fi


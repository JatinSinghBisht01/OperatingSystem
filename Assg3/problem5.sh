#Program to find whether a string or number is a palindrome

echo "Enter a string or number:"
read input

lower_input=$(echo "$input" | tr '[:upper:]' '[:lower:]')

reverse=$(echo "$lower_input" | rev)

if [[ "$lower_input" == "$reverse" ]]; then
  echo "'$input' is a palindrome."
else
  echo "'$input' is not a palindrome."
fi


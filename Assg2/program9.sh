#Program to find a pattern in file

echo "Enter the file name:"
read file

if [ ! -f "$file" ]; then
  echo "File does not exist. Please check the file name."
  exit 1
fi

echo "Enter the pattern to search: "
read pattern

if grep -nE "$pattern" "$file"; then
  echo "Pattern found in the file."
else
  echo "Pattern not found."
fi

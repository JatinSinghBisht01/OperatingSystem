#Program to search and replace a string in a file

echo "Enter filename:"
read file

# Check if the file exists
if [[ ! -f "$file" ]]; then
  echo "Error: File '$file' does not exist."
  exit 1
fi

echo "Enter string to search:"
read search

# Check if the file contains the search string
if ! grep -q "$search" "$file"; then
  echo "Error: String '$search' not found in '$file'."
  exit 1
fi

echo "Enter replacement string:"
read replace

# Replacing the string
sed -i "s/$search/$replace/g" "$file"

echo "Replacement done successfully."

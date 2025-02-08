#Program to count files of an extension type in a directory

echo "Enter the directory path:"
read dir

# Check if the directory exists
if [[ ! -d "$dir" ]]; then
  echo "Error: Directory '$dir' does not exist."
  exit 1
fi

echo "Enter the file extension (e.g., txt, sh):"
read ext

count=$(find "$dir" -type f -name "*.$ext" | wc -l)

echo "Number of .$ext files in '$dir': $count"

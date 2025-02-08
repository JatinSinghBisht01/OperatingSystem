#Program to copy numbers from a file and save it to another after sorting

echo "Enter input file name:"
read input_file

# Check if input file exists
if [[ ! -f "$input_file" ]]; then
  echo "Error: File '$input_file' does not exist."
  exit 1
fi

echo "Enter output file name:"
read output_file

# Check if output file already exists
if [[ -f "$output_file" ]]; then
  echo "Warning: File '$output_file' already exists."
  echo "Do you want to overwrite it? (yes/no)"
  read choice
  choice=$(echo "$choice" | tr '[:upper:]' '[:lower:]')

  if [[ "$choice" != "yes" ]]; then
    echo "Operation canceled. The file will not be overwritten."
    exit 0
  fi
fi

# Sort numbers from input file and save them to output file
sort -n "$input_file" > "$output_file"

if [[ $? -eq 0 ]]; then
  echo "Numbers sorted and saved to '$output_file'."
else
  echo "Error: Failed to sort and save the file."
fi

echo "Enter the filename to monitor:"
read file

# Check if file exists
if [[ ! -f "$file" ]]; then
  echo "Error: File '$file' does not exist."
  exit 1
fi

# Get initial modification timestamp
last_mod=$(stat -c %Y "$file")

echo "Monitoring '$file' for changes..."
while true; do
  new_mod=$(stat -c %Y "$file")
  if [[ "$new_mod" != "$last_mod" ]]; then
    echo "File '$file' has been modified!"
    last_mod=$new_mod  # Update timestamp
  fi
  sleep 1  # Check every second
done

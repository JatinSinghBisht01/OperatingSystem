echo "Enter the process name:"
read process

# Search for the process using ps aux
pid=$(ps aux | grep -i "$process" | grep -v "grep" | awk '{print $2}')

if [[ -n "$pid" ]]; then
  echo "Process '$process' is running with PID(s): $pid"
else
  echo "Process '$process' is not running."
fi

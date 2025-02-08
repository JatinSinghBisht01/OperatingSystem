#Program to display system information

# Get system information
os_version=$(lsb_release -d | awk -F"\t" '{print $2}')
kernel_version=$(uname -r)
system_uptime=$(uptime -p)

echo "--------------------------------------------"
printf "| %-15s | %-25s |\n" "Parameter" "Value"
echo "--------------------------------------------"

printf "| %-15s | %-25s |\n" "OS Version" "$os_version"
printf "| %-15s | %-25s |\n" "Kernel Version" "$kernel_version"
printf "| %-15s | %-25s |\n" "Uptime" "$system_uptime"

echo "--------------------------------------------"

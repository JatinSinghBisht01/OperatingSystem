#Program to display disk usage of home directory in human readable format

output=$(du -sh ~)

#Disk usage in tabular format

#Header
echo "-------------------------------"
printf "| %-10s | %-15s |\n" "Size" "Directory"
echo "-------------------------------"

#Body
printf "| %-10s | %-15s |\n" $(echo $output)

echo "-------------------------------"

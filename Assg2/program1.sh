#program to check the polarity of an integer

echo "Enter a an integer"
read num

if [ $num -gt 0 ]; then
	echo "$num is an positive integer"
elif [ $num -lt 0 ]; then
	echo "$num is a negative integer"
else
	echo "$num is a bipolar integer"
fi

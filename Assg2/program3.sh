#program to find average of N numbers

echo "Enter value of N"
read n

sum=0

echo "Enter the numbers:"

for ((i=1; i<=n; i++)); do
	read num
	sum=$((sum+num))
done

avg=$(echo "$sum / $n" | bc -l)
echo "Sum: $sum"
echo "average: $avg"

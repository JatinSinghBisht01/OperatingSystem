#Program to find factorial of a number

echo "Enter a number:"
read num
fact=1

for ((i=1; i<=num; i++)); do
  fact=$(echo "$fact * $i" | bc)
done

echo "Factorial of $num is $fact"

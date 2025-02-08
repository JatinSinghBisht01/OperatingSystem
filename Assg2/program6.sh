#Program to find sum of series S=1^2+2^2+3^2+...n^2

echo "Enter the value of n:"
read n
sum=0

for ((i=1; i<=n; i++)); do
  sum=$((sum + i * i))
done

echo "Sum of the series is $sum"

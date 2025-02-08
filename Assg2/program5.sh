#Program to find first N odd numbers

echo "Enter the value of n:"
read n

for ((i=1; i<=n; i+=2)); do
  echo $i
done

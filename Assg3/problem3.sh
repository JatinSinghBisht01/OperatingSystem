#Fibonacci till N terms

echo "Enter value of N: "
read n
a=0
b=1

echo "Fibonacci series up to $n terms:"
for ((i=0; i<n; i++)); do
  echo -n "$a "
  temp=$((a + b))
  a=$b
  b=$temp
done
echo

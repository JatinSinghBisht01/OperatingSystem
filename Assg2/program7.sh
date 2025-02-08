#Program to perform arithmetic operation using switch case

echo "Enter two numbers:"
read a b
echo "Choose operation: 1. Add 2. Subtract 3. Multiply 4. Divide"
read op

case $op in
  1) echo "Result: $((a + b))" ;;
  2) echo "Result: $((a - b))" ;;
  3) echo "Result: $((a * b))" ;;
  4) echo "Result: $(echo "scale=2; $a / $b" | bc)" ;;
  *) echo "Invalid option" ;;
esac

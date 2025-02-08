#Program to find sum of series of first N numbers of given pattern.

echo "Choose a series: 
1. 1+2+3+...+n 
2. 1²+2²+3²+...+n² 
3. 1³+2³+3³+...+n³"
read choice
echo "Enter the value of n:"
read n

case $choice in
  1) 
     # Formula: Sum = n * (n + 1) / 2
     sum=$((n * (n + 1) / 2))
     echo "Sum of the series: $sum"
     ;;
  2) 
     # Formula: Sum = n * (n + 1) * (2n + 1) / 6
     sum=$((n * (n + 1) * (2 * n + 1) / 6))
     echo "Sum of the squares: $sum"
     ;;
  3) 
     # Formula: Sum = (n * (n + 1) / 2)²
     temp=$((n * (n + 1) / 2))
     sum=$((temp * temp))
     echo "Sum of the cubes: $sum"
     ;;
  *) 
     echo "Invalid choice"
     ;;
esac

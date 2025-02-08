#program to find the largest and smallest of three numbers taken as input from user

echo "Enter num a"
read a

echo "Enter num b"
read b

echo "Enter num c"
read c

max=$a
min=$a

if [ $b -gt $max ]; then max=$b; fi
if [ $c -gt $max ]; then max=$c; fi

if [ $b -lt $min ]; then min=$b; fi
if [ $c -lt $min ]; then min=$c; fi

echo "max number : $max"
echo "min number : $min"


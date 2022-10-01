Problem:
Script to find difference of sum of squares of even numbers and sum of squares of odd numbers

Solution:
read n
i=1
e=0
o=0
while [ $i -le $n ]
do
read x
sqx=$(($x * $x))
rem=$(($x % 2))
if [ $rem -eq 0 ]
then
e=`expr $e + $sqx`
else
o=`expr $o + $sqx`
fi
i=`expr $i + 1`
done
ans=`expr $e - $o`
echo $ans

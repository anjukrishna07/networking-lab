echo Enter the number1
 read a
 echo Enter the number2
 read b
 c=`expr $a + $b`
 echo Addition= $c
 d=`expr $a - $b`
 echo subtraction=$d
 e=`expr $a \* $b`
 echo Multipliccation=$e
 f=`expr $a / $b`
 echo Division=$f

output:
Enter the number1
6
Enter the number2
3
Addition= 9
subtraction=3
Multipliccation=18
Division=2


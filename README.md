# TIL

**3/15**

TYPE, 제곱 적용 

# 🚨 Don't change the code below 👇
```
height = input("enter your height in m: ")
weight = input("enter your weight in kg: ")
```

#Write your code below this line 👇

```
height_second=(float(height))
weight_second=(int(weight))
result=(weight_second/height_second**2)   
print(float(result))
print(int(result))
```

***2 는 2의제곱*


#it's teacher's code 👇
```
bmi = weight_as_int / heiight_as_float **2
bmi_as_int = int(bmi)
print(bmi_as_int)
```
CONSOLE

enter your height in m: 1.75 

enter your weight in kg: 80

26.122448979591837

26


---
---





**3/16**

f-string 함수 적용
# 🚨 Don't change the code below 👇
```
age = input("What is your current age?")
```
#Write your code below this line 👇
```
days=(365*90-int(age)*365)
weeks=(52*90-int(age)*52)
months=(12*90-int(age)*12)
print(f" You have {days} days, {weeks} weeks, and {months} months left.")
```

* CONSOLE

What is your current age?56
 You have 12410 days, 1768 weeks, and 408 months left.




f함수+사칙연산함수+소수점함수(round실패)



 ```
 #If the bill was $150.00, split between 5 people, with 12% tip. 

#Each person should pay (150.00 / 5) * 1.12 = 33.6
#Format the result to 2 decimal places = 33.60

#Tip: There are 2 ways to round a number. You might have to do some Googling to solve this.💪

#Write your code below this line 👇

print("Welcome to the tip calculator!")
bill=float(input("What was the total bill? $"))
tip=int(input("How much tip would you like to give? 10, 12, or 15? "))
people=int(input("How many people to split the bill?"))

tip_2=(tip/100*bill+bill) #팁퍼센트*총금액 = 팁금액+총금액
pay=int(tip_2)/people
pay_final="{:2f}".format(pay)
print(pay_final)
```

*왜 소수점2자리까지 보이지 않을까??*



* CONSOLE

Welcome to the tip calculator!

What was the total bill? $150

How much tip would you like to give? 10, 12, or 15? 12

How many people to split the bill?5
33.600000


---
---





**3/17**

IF ELSE 함수

```
# 🚨 Don't change the code below 👇
number = int(input("Which number do you want to check? "))
```
```
#Write your code below this line 👇
if number%2==0:
 print("This is an even number.")
else:
  print("This is an odd number.")
```

*if 에 : 까먹지 않기* 

*%는 나누고 난 나머지값 도출*

* COLSOLE

Which number do you want to check? 94

This is an even number.
# TIL

---
---
**3/15**

TYPE, 제곱 적용 

# 🚨 Don't change the code below 👇
```python
height = input("enter your height in m: ")
weight = input("enter your weight in kg: ")
```

#Write your code below this line 👇

```python
height_second=(float(height))
weight_second=(int(weight))
result=(weight_second/height_second**2)   
print(float(result))
print(int(result))
```

***2 는 2의제곱*


#it's teacher's code 👇
```python
bmi = weight_as_int / heiight_as_float **2
bmi_as_int = int(bmi)
print(bmi_as_int)
```
CONSOLE

enter your height in m: 1.75 

enter your weight in kg: 80

26.122448979591837

26

<br>

<br>
<br>
<br>
<br>


---
---

**3/16**

f-string 함수 적용
# 🚨 Don't change the code below 👇
```
age = input("What is your current age?")
```
#Write your code below this line 👇
```python
days=(365*90-int(age)*365)
weeks=(52*90-int(age)*52)
months=(12*90-int(age)*12)
print(f" You have {days} days, {weeks} weeks, and {months} months left.")
```

* CONSOLE

What is your current age?56
 You have 12410 days, 1768 weeks, and 408 months left.




f함수+사칙연산함수+소수점함수



 ```python
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
pay_final="{:.2f}".format(pay)  #f-string 더 자주사용
print(pay_final)
```

*.2f*



* CONSOLE

Welcome to the tip calculator!

What was the total bill? $150

How much tip would you like to give? 10, 12, or 15? 12

How many people to split the bill?5
33.600000
<br>
<br><br>
<br>
<br>

---
---




**3/17**

IF ELSE 함수

# 🚨 Don't change the code below 👇

 ```python
number = int(input("Which number do you want to check? "))
```
```python
#Write your code below this line 👇
if number%2==0:
 print("This is an even number.")
else:
  print("This is an odd number.")
```

<br>
<br>

*if 에 : 까먹지 않기* 

*%는 나누고 난 나머지값 도출*

* COLSOLE

Which number do you want to check? 94

This is an even number.
<br>
<br>

---
if,else,round 적용
```python
# 🚨 Don't change the code below 👇
height = float(input("enter your height in m: "))
weight = float(input("enter your weight in kg: "))
# 🚨 Don't change the code above 👆

#Write your code below this line 👇
bmi=round(weight/height**2)

if bmi<18.5:  
 print(f"Your BMI is {bmi}, you are underweight.") 
elif bmi<25:   # below만 생각하기
 print(f"Your BMI is {bmi}, you are normal weight") 
elif bmi<30:
 print(f"Your BMI is {bmi}, you are slightly overweight") 
elif bmi<35:
 print(f"Your BMI is {bmi}, you are obese") 
else:    #나머지는 else
 print(f"Your BMI is {bmi}, you are clinically obese")
 ```

 COLSOLE

 Your BMI is 28, you are slightly overweight.
<br>
<br>

---
**if , else 구하기 보스문제<br>**
**leap year : 윤년 : 4년마다 도래되는 해를 표시하라**<br><br>
1.흐름 flow 만들기 (어떻게 계산할것인지)
<br>2.시각화하기<br><br>


*틀린버전1*
 ```python
 year = int(input("Which year do you want to check? "))
# 🚨 Don't change the code above 👆

#Write your code below this line 👇
#t=round(year/4,1)
if year%4==0:
  if year%100\=0:     #????
    if year%400==0:
     print("Leap year.")
else:
  print("Not leap year." )  #????

```

```PYTHON
# 🚨 Don't change the code below 👇
year = int(input("Which year do you want to check? "))
# 🚨 Don't change the code above 👆

#Write your code below this line 👇

if year%4==0:
 if year%100==0:  #여기서 100으로 나눈값에 나머지가 0일시 "LEAP YEAR"로 출력되는
   if year%400==0:
    print("Leap year.")
   else:
    print("Not Leap year." ) # %400 ->0 
 else:
  print("Leap year." ) # %100->0 
else:
 print("Not leap year." ) # %4 
 ```


 3/19<BR>
IF함수
 ```PYTHON
 # 🚨 Don't change the code below 👇
print("Welcome to Python Pizza Deliveries!")
size = input("What size pizza do you want? S, M, or L ")
add_pepperoni = input("Do you want pepperoni? Y or N ")
extra_cheese = input("Do you want extra cheese? Y or N ")
# 🚨 Don't change the code above 👆

#Write your code below this line 👇

if size=='L':
 bill = 25
 if add_pepperoni=='Y':
  bill = bill+3
 if size=='M':
  bill = 20
  if add_pepperoni=='Y':
   bill = bill+3
  if size=='S':
   bill = 15
   if add_pepperoni=='Y':
    bill = bill+1

if extra_cheese=='Y':
 bill = bill+1
 ```

 CONSOLE
<BR> 28

 ```python
 # 🚨 Don't change the code below 👇
print("Welcome to the Love Calculator!")
name1 = input("What is your name? \n")
name2 = input("What is their name? \n")
# 🚨 Don't change the code above 👆

#Write your code below this line 👇

name1 = name1.lower() #.lower()
name2 = name2.lower()
name3 = f'{name1}{name2}' #f스트링은 가로 필요없음

a=name3.count('t')+name3.count('r')+name3.count('u')+name3.count('e')
b=name3.count('l')+name3.count('o')+name3.count('v')+name3.count('e')

ab=int(f'{a}{b}')

if ab<10 or ab>90:
 print(f'Your score is {ab}, you go together like coke and mentos.')
elif 40<ab<50:
 print(f'Your score is {ab}, you are alright together.')
else:
 print(f'Your score is {ab}.')	   
```

CONSOLE<BR>
Welcome to the Love Calculator!
What is your name? 
Kanye West
What is their name? 
Kim Kardashian
Your score is 42, you are alright together.
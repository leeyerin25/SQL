# TIL

---
---
**3/15**

TYPE, 제곱 적용 

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
CONSOLE<br>
enter your height in m: 1.75 <br>
enter your weight in kg: 80<br>
26.122448979591837<br>
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

CONSOLE<br>
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

 ```python
number = int(input("Which number do you want to check? "))

#Write your code below this line 👇
if number%2==0:
 print("This is an even number.")
else:
  print("This is an odd number.")
```

*if 에 : 까먹지 않기* <br>
*%는 나누고 난 나머지값 도출*
<br>
COLSOLE<br>
Which number do you want to check? 94<br>
This is an even number.
<br>
<br>

---
if,else,round 적용
```python
# 🚨 Don't change the code below 👇
height = float(input("enter your height in m: "))
weight = float(input("enter your weight in kg: "))

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

 COLSOLE<br>
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
<br>
<br>
<br>

---
---

 3/19<BR>
IF함수
 ```PYTHON
 # 🚨 Don't change the code below 👇
print("Welcome to Python Pizza Deliveries!")
size = input("What size pizza do you want? S, M, or L ")
add_pepperoni = input("Do you want pepperoni? Y or N ")
extra_cheese = input("Do you want extra cheese? Y or N ")


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
<br>
<br>
<br>

---
---
3/20<br>
틀린버전1
```python
print("Welcome to Treasure Island.")
print("Your mission is to find the treasure.") 

#Write your code below this line 👇
leftright=input("Youre at a crossroad. Where do you want to go? Type 'left' or 'right'")
waitswim=input("Youve come to a lake. There is an island in the middle of the lake. Type wait to wait for a boat. Type swim to swim across.")
dore=input("You arrive at the island unharmed. There is a house with 3 doors. One red, one yellow and one blue. Which colour do you choose?")

print(leftright)
if leftright=='left':
	print(waitswim)
	if waitswim=='wait':  #여기에 넣는게 아니라 여기에 바로 input을해서 질문을 이어가야함. 그리고 그 input에 제목을 붙혀줘서 나중에 이용할 수 있게 해야함
		print("You arrive at the island unharmed. There is a house with 3 doors. One red, one yellow and one blue. Which colour do you choose?")
	else:
		print("You fell into a hole. Game Over.")
elif leftright=='right':
	print("fall in a hole. game over.")
  ```

  정답
  ```python
  print("Welcome to Treasure Island.")
print("Your mission is to find the treasure.") 

#Write your code below this line 👇
leftright=input('Youre at a crossroad. Where do you want to go? Type "left" or "right".') #1번째 질문을 INPUT 사용해서 생성

if leftright=="left": 
	waitswim=input('You\'ve come to a lake. There is an island in the middle of the lake. Type "wait" to wait for a boat. Type "swim" to swim across.')
	if waitswim=="wait":
		door=input("You arrive at the island unharmed. There is a house with 3 doors. One red, one yellow and one blue. Which colour do you choose?")
		if door=='yellow':
			print("You found the treasure! You Win!")
		else:
			print("You chose a door that doesn't exist. Game Over.")	
	else:
		print("You fell into a hole. Game Over.")
elif leftright=='right':
	print("fall in a hole. game over.")
  ```

CONSOLE<br>
Welcome to Treasure Island.<br>
Your mission is to find the treasure.<br>
Youre at a crossroad. Where do you want to go? Type "left" or "right".left<br>
You've come to a lake. There is an island in the middle of the lake. Type "wait" to wait for a boat. Type "swim" to swim across.wait<br>
You arrive at the island unharmed. There is a house with 3 doors. One red, one yellow and one blue. Which colour do you choose?red<br>
You chose a door that doesn't exist. Game Over.

---

RANDOM함수<br>
함수는3종류 내장형 / 모듈 / 다운받아야되는거
```PYTHON 
import random # import  + random.radnint
ramdom2=random.randint(1,6) #1~6사이 숫자 무작위추출

print(ramdom2)

random3=random.random() #0~1사이 무작위 추출
print(random3)
```
CONSOLE
<BR> 3<BR>0.25445<br><br>

---

랜덤으로 숫자 뽑고 1이면 head를 표시, 0이면 tails를 표시하라

```python
import random
random2 =random.randint(0,1)

if random2==1:
	print("Head")
else:
	print("Tails")
```

---
random,split함수<BR>
틀린버전
```python
import random #import random 은 보통 맨윗줄에
# Split string method
names_string = input("Give me everybody's names, separated by a comma. ")
names = names_string.split(", ")  
# 🚨 Don't change the code above 👆

#Write your code below this line 👇
len=len(names)
random1 = random.randint(0,len-1) #뽑을 범위수를 정함

print(f'{random1} is going to buy the meal today!')
```
<br>
정답버전<br>

```python
import random #import random 이라는 모듈을 써야 그에 딸려오는 choice,sample 등의 함수를 불러올수있다. 
# Split string method
names_string = input("Give me everybody's names, separated by a comma. ")
names = names_string.split(", ") #kim, lee[, ]park
# 🚨 Don't change the code above 👆

#Write your code below this line 👇
len=len(names)
random1 = random.randint(0,len-1) # 들어오는 이름에서 아무거나 뽑아주는게됨
person=names[random1]  #리스트에서 숫자로 추출하는거
print(f'{person} is going to buy the meal today!')
```
<br><br>
---
---
3/21<br>list함수
```python
# 🚨 Don't change the code below 👇
row1 = ["⬜️","⬜️","⬜️"]
row2 = ["⬜️","⬜️","⬜️"]
row3 = ["⬜️","⬜️","⬜"]
map = [row1, row2, row3]
print(f"{row1}\n{row2}\n{row3}")
position = input("Where do you want to put the treasure? ")
# 🚨 Don't change the code above 👆

#Write your code below this row 👇

hori=int(position[0]) #2
verti=int(position[1]) #3

selected_row=map[verti-1] #맵에서 row1,row2,row3이냐 몇번째 줄인가를 골라줌 + 줄을 정하는게 우선순위
selected_row[hori-1] = "x" #그줄에서 몇번째 박스인가를 골라줌

#Write your code above this row 👆

# 🚨 Don't change the code below 👇
print(f"{row1}\n{row2}\n{row3}")
```
CONSOLE
```PYTHON
['⬜️', '⬜️', '⬜️']
['⬜️', '⬜️', '⬜️']
['⬜️', '⬜️', '⬜']
Where do you want to put the treasure? 23
['⬜️', '⬜️', '⬜️']
['⬜️', '⬜️', '⬜️']
['⬜️', 'x', '⬜']  #23을 넣었을때 
#3의 행을 먼저 찾고, 2라는열의 위치를 찾는다.
```
---
list,if,random,input 함수 "가위바위보게임"<BR>
1차버전
```python
list=[rock,paper,scissors]
choice=int(input("What do you choose? Type 0 for Rock, 1 for Paper or 2 for Scissors.\n"))
if choice==0: #0을 뽑기위해선 인풋을 int로 적용시켜야함
	print(rock)
	if choice==1:
		print(paper)
		if choice==2:
			print(scissors) #넘 길어

radom= random.randint(0,2)
print("Computer choose" + list[radom])
```
정답
```python
list=[rock,paper,scissors]
choice=int(input("What do you choose? Type 0 for Rock, 1 for Paper or 2 for Scissors.\n"))
print(list[choice]) #if 3줄을 한줄로 줄이는 방법

radom= random.randint(0,2)
print("Computer choose" + list[radom])

if choice==0 and radom==0:
	print("it's draw")
if choice==0 and radom==2:
	print("you win") .....
  ```
  CONSOLE
  ```
  What do you choose? Type 0 for Rock, 1 for Paper or 2 for Scissors.
0

    _______
---'   ____)
      (_____)
      (_____)
      (____)
---.__(___)

Computer choose #RANDOM
    _______
---'   ____)
      (_____)
      (_____)
      (____)
---.__(___)

it's draw
```
---
for in 반복문 (IN에 속한 값 수만큼 반복이 돌아야 끝남)
```python
student_heights = input("Input a list of student heights ").split()
for n in range(0, len(student_heights)):
  student_heights[n] = int(student_heights[n]) #이건 그냥 INT변환작업인지??
# 🚨 Don't change the code above 👆

height_total = 0
for height in student_heights: 
 height_total = height_total + height #+height를 통해서 ex)140+160+180 이렇게 반복되어 더해짐
print(height_total)

number=0
for student in student_heights:
 number = number + 1 #이식은 INPUT값의 개수만 이용한건가?? +1을 통해서 140+160+180의 숫자만큼 1씩만 더해진다. (input값과 상관없이)

 print(round(height_total/number))

```
CONSOLE<BR>
Input a list of student heights<BR> 100 200 300 100<BR>
700<BR>
4<BR>S
175

---
```python
# 🚨 Don't change the code below 👇
student_scores = input("Input a list of student scores ").split()
for n in range(0, len(student_scores)):
  student_scores[n] = int(student_scores[n])
print(student_scores)

#Write your code below this row 👇
scoretotal =0
for score in student_scores:
	if score > scoretotal: # >를 통해 값을 쭉 비교하고
		scoretotal = score # =를 통해 score > scoretotal 이 성립할시 값을 바꿔준다
print(f"the score is :{scoretotal} .") #궁금한점 PRINT를 앞에붙히는것과 띄어쓰기해서 나온값이 다르던데 왜그런것인가??
```
CONSOLE<BR>
Input a list of student scores 140 150 187 100 195<BR>
[140, 150, 187, 100, 195]<BR>
the score is :195 .<BR>
<BR><BR><BR>

---
for in range 사용해서 값 전체더하기 (짝수만)
```
total = 0
for number in range(2,101,2): #2씩 커지게 = 짝수
	total = total+number
print(total)
```
``` 
total = 0
for number in range(2,101,2): 
	if number %2 == 0:  #나머지=0 인 값을 찾기=짝수
  total += number
print(total)
```
CONSOLE<BR>
2550
<BR><BR>

---
FOR IN RANGE + IF 함수 <BR>
오답
```
#Write your code below this row 👇
for number in range(1,101):
	if number %3==0 :
		print("Fizz")
	elif number % 5 == 0:
		print("buzz")
	elif number %3==0 and number %5==0 :
		print("fizzbuzz")
print(number)		#들어쓰기 틀림
```
```python
for number in range(1,101):
	if number %3==0 and number %5==0 : #조건이 많은걸 먼저쓰는건가?
		print("fizzbuzz")
	elif number % 5 == 0:
		print("buzz")
	elif number %3==0 :
		print("fizz")
	else:
		print(number)#적용할게 없을땐 그대로 써주기


CONSOLE<BR>
1
2
fizz
4
buzz
fizz
7
8
fizz
buzz
11
fizz
13
14
fizzbuzz
16
17 ....
```

```python
#Password Generator Project
import random
letters = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']
numbers = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
symbols = ['!', '#', '$', '%', '&', '(', ')', '*', '+']

print("Welcome to the PyPassword Generator!")
nr_letters= int(input("How many letters would you like in your password?\n")) 
nr_symbols = int(input(f"How many symbols would you like?\n"))
nr_numbers = int(input(f"How many numbers would you like?\n"))
```
오답
```
#Eazy Level - Order not randomised:
#e.g. 4 letter, 2 symbol, 2 number = JduE&!91
password = ""

random2 = random.randint(0,2)   #랜덤만 써선 못하나??
print(letters[random2] + "is gppd.")
```
정답 easy case
```py
password = "" #문장만들기위해 공란으로

for char in range (0,nr_letters):  #nr_letters INPUT 넣은회수만큼 돌게됨 -> 원하는 자릿수가 있다면 for in range로 나올 자릿수를 정해줘야함 
#궁금한건 char 은 무슨 의미인가??
	password = password + random.choice(letters)
	
for char in range (0,nr_symbols): 
	password = password + random.choice(symbols)
	
for char in range (0,nr_numbers): 
	password = password + random.choice(numbers)

 print(password)

 ---
CONSOLE
Welcome to the PyPassword Generator!
How many letters would you like in your password?
3
How many symbols would you like?
3
How many numbers would you like?
3
dAw%!!592
```
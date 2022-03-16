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
result=(weight_second/height_second**2)   #**2 2의제곱
print(float(result))
print(int(result))
```




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

f-sting 함수 적용
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

CONSOLE

What is your current age?56
 You have 12410 days, 1768 weeks, and 408 months left.
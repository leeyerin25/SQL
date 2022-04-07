#1
from random import randint

#주사위2개의 눈이 같을 확률
total=100000
same=0
for i in range(total):
    first = randint(1, 6)
    second = randint(1, 6)
    if first == second:
        same += 1

#100,000번 던져 두 눈이 같게되는 횟수, 비율
count_same = 0
for s in range(1,100001):
    first_2 = randint(1, 6)
    second_2 = randint(1, 6)
    if first_2 == second_2:
        count_same += 1

print(f"던진 주사위의 횟수: {s}, 두 눈이 같은 횟수: {count_same}")
print(f"두 주사위의 눈이 같을 확률: {same/total}, 두 눈이 같은 비율: {count_same/s}")


#2
bit = input("이진수를 입력하세요: ")
bit_rever = bit[::-1] #계산을 위해 받은거 뒤집기

ten = 0  #ten이 for문 안에 있으니 적용이 안됨
for number in range(0, len(bit)):
    bit_2 = 2**number
    result = bit_2 * int(bit_rever[number])
    ten = ten + result

print(f"{bit}에 대한 10진값: {ten}")


# 3

dec_2 = input("(10진) 자연수를 입력하세요: ")
dec = int(dec_2)
ls = []
while dec > 0: #정수면 계속 돌거야
    ls_2 = dec % 2
    ls.append(ls_2)
    dec = dec // 2

ls.reverse()
ls = "".join(map(str, ls))
print(f"{dec_2}에 대한 2진수: {ls}")

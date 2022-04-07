MENU = {
    "espresso": {
        "ingredients": {
            "water": 50,
            "coffee": 18,
        },
        "cost": 1.5,
    },
    "latte": {
        "ingredients": {
            "water": 200,
            "milk": 150,
            "coffee": 24,
        },
        "cost": 2.5,
    },
    "cappuccino": {
        "ingredients": {
            "water": 250,
            "milk": 100,
            "coffee": 24,
        },
        "cost": 3.0,
    }
}
money = 0
resources = {
    "water": 300,
    "milk": 200,
    "coffee": 100,
}

def resources_sufficient():
    if resource < answer["ingredients"]:


while : #무한반복
    answer = input("What would you like? (espresso / latte / cappuccino: ")
    if answer == "off":   #첫번째 실수
        return False
    elif answer == "report":
        print(f"water: {resources['water']}")   #f스트링과 딕셔너리 함께 쓰는법 **
        print(f"milk: {resources['milk']} ")
        print(f"coffee: {resources['coffee']} ")
        print(f"money : {money}")




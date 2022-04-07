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


def resources_sufficient(drink):
    for item in drink:  # drink 의 키값이 나옴. 나중에 파라먼트에다가 더 깊히 집어넣으면 숫자로 내보내질수있어
        if resources[item] < drink[item]:
            print("Sorry there is not enough resources.")
            return False
        return True


def process_coins():
    quarters = int(input("how many quarters?")) * 0.25
    dimes = int(input("how many dimes?")) * 0.10
    nickles = int(input("how many nickles?")) * 0.05
    pennies = int(input("how many pennies?")) * 0.01
    total = quarters + dimes + nickles + pennies
    return total


def transaction_successful(menu_cost, inserted_coin):
    global money
    if menu_cost < inserted_coin:
        money += inserted_coin
        report()
        print(f"Here is ${inserted_coin - menu_cost} dollars in change.")
        return True
    else:
        print("Sorry that's not enough money. Money refunded.")
        return False

def report():
    print(f"water: {resources['water']}")  # f스트링과 딕셔너리 함께 쓰는법 **
    print(f"milk: {resources['milk']} ")
    print(f"coffee: {resources['coffee']} ")
    print(f"money : {money}")


def make_coffee(drink_name, order_ingredients):
    """Deduct the required ingredients from the resources."""
    for item in order_ingredients:  # water milk 차례대로 들어가게 만듬
        resources[item] -= order_ingredients[item]
    print(f"Here is your {drink_name} ☕️. Enjoy!")


is_going = True
while is_going:  # 무한반복
    answer = input("What would you like? (espresso / latte / cappuccino) : ")
    if answer == "off":  # 첫번째 실수
        is_going = False
    elif answer == "report":
        print(f"water: {resources['water']}")  # f스트링과 딕셔너리 함께 쓰는법 **
        print(f"milk: {resources['milk']} ")
        print(f"coffee: {resources['coffee']} ")
        print(f"money : ${money}")
    else:
        drink = MENU[answer]
        if resources_sufficient(drink["ingredients"]):
            pay = process_coins()
            if transaction_successful(drink["cost"], pay):
                make_coffee(answer, drink["ingredients"])

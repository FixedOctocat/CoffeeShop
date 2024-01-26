import sqlite3


def CheckUser(name, password):
    try:
        sqlite_connection = sqlite3.connect("CoffeeShop.db")
        cursor = sqlite_connection.cursor()
        sql = "SELECT history FROM users WHERE username = '%s' AND password ='%s'" % (
            name,
            password,
        )
        cursor.execute(sql)
        return cursor.fetchone()[0]
    except:
        return False


def GetUserWallet(name):
    sqlite_connection = sqlite3.connect("CoffeeShop.db")
    cursor = sqlite_connection.cursor()
    sql = "SELECT wallet_id FROM users WHERE username = ?"
    cursor.execute(
        sql,
        (name,),
    )
    return cursor.fetchone()[0]


def GetUserHistory(username):
    sqlite_connection = sqlite3.connect("CoffeeShop.db")
    cursor = sqlite_connection.cursor()
    sql = "SELECT history FROM users WHERE username = ?"
    cursor.execute(
        sql,
        (username,),
    )
    return cursor.fetchone()[0]


def PurchaseCoffee(username, wallet_id, coffees, price):
    sqlite_connection = sqlite3.connect("CoffeeShop.db")
    cursor = sqlite_connection.cursor()
    sql = "SELECT amount FROM wallets WHERE id = ?"
    cursor.execute(
        sql,
        (wallet_id,),
    )
    amount = cursor.fetchone()[0]

    if amount < price:
        return "На Вашем кошелке недостаточно средств"

    history = GetUserHistory(username)
    sqlite_connection = sqlite3.connect("CoffeeShop.db")
    cursor = sqlite_connection.cursor()
    sql = "UPDATE users SET history = ? WHERE username = ?"

    cursor.execute(
        sql,
        (
            history + coffees,
            username,
        ),
    )
    sqlite_connection.commit()
    cursor.close()

    if "Эспрессо" in coffees:
        return "Congratz!"

    return "Заказ оплачен и скоро будет доставлен"


if __name__ == "__main__":
    pass

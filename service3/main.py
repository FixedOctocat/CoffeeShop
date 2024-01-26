from flask import Flask, request
import jwt
import hashlib
from sqlite import *

app = Flask(__name__)
items = {
    "items": [
        {"item_id": 0, "name": "Эспрессо", "price": 101},
        {"item_id": 1, "name": "Ристретто", "price": 10},
        {"item_id": 2, "name": "Капучино", "price": 2},
        {"item_id": 3, "name": "Латте", "price": 6},
        {"item_id": 4, "name": "Кортадо", "price": 10},
        {"item_id": 5, "name": "Флэт уайт", "price": 3},
        {"item_id": 6, "name": "Мокачино", "price": 7},
        {"item_id": 7, "name": "Лунго", "price": 5},
    ]
}


@app.route("/api/login", methods=["POST"])
def login():
    if request.method == "POST":
        username = request.form.get("username")
        password = request.form.get("password")

        if CheckUser(username, hashlib.md5(password.encode()).hexdigest()):
            try:
                return jwt.encode(
                    {"username": username, "wallet_id": GetUserWallet(username)},
                    "secret",
                    algorithm="HS256",
                )
            except:
                return "Произошла ошибка"

        return "Такого пользователя не существует"


@app.route("/api/history", methods=["POST"])
def history():
    if request.method == "POST":
        encoded_jwt = str.encode(request.form.get("jwt"))
        try:
            decoded_jwt = jwt.decode(encoded_jwt, "secret", algorithms="HS256")
            return GetUserHistory(decoded_jwt["username"])
        except:
            return "Такого пользователя не существует"


@app.route("/api/purchase", methods=["POST"])
def purchase():
    if request.method == "POST":
        if request.form.get("key") != "7fb9cc76573a0766cba166912973b0aa":
            return "Неверный ключ"

        encoded_jwt = str.encode(request.form.get("jwt"))
        kurza = request.form.get("kurza")[1:-1].split(",")

        c = 0
        d = ""

        try:
            for i in kurza:
                c += items["items"][int(i)]["price"]
                d += items["items"][int(i)]["name"] + "\n"

            decoded_jwt = jwt.decode(encoded_jwt, "secret", algorithms="HS256")

            return PurchaseCoffee(
                decoded_jwt["username"], decoded_jwt["wallet_id"], d, c
            )
        except:
            return "Произошла ошибка"


if __name__ == "__main__":
    app.run(debug=False, host="0.0.0.0", port=13003)

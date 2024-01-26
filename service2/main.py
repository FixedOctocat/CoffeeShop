from flask import Flask, request

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


@app.route("/api/pre_purchase", methods=["POST"])
def pre_purchase():
    if request.method == "POST":
        try:
            kurza = eval(request.form.get("kurza"))

            c = ""
            for i in kurza:
                c += (
                    str(items["items"][int(i)]["name"])
                    + " "
                    + str(items["items"][int(i)]["price"])
                    + "\n"
                )

            return c
        except:
            return " "


if __name__ == "__main__":
    app.run(debug=False, host="0.0.0.0", port=13002)

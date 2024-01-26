from flask import Flask, request, send_file

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


@app.route("/api/items", methods=["GET"])
def coffee_items():
    if request.method == "GET":
        return items


@app.route("/api/image", methods=["GET"])
def coffee_images():
    if request.method == "GET":
        image_id = request.args.get("file")

        if image_id is None:
            return "Where is id???"
        return send_file(f"src/{image_id}")


if __name__ == "__main__":
    app.run(debug=False, host="0.0.0.0", port=13001)

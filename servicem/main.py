from flask import Flask, request, make_response
import requests


app = Flask(__name__)


@app.route("/api/items", methods=["GET"])
def coffee_items():
    if request.method == "GET":
        return requests.get("http://service1:13001/api/items").text


@app.route("/api/image", methods=["GET"])
def coffee_images():
    if request.method == "GET":
        req = requests.get(
            f"http://service1:13001/api/image?file={request.args.get('file')}"
        )
        resp = make_response(req.content)
        resp.headers["Content-Type"] = req.headers["Content-Type"]
        try:
            resp.headers["Content-Disposition"] = req.headers["Content-Disposition"]
        except:
            pass
        return resp


@app.route("/api/pre_purchase", methods=["POST"])
def pre_purchase():
    if request.method == "POST":
        return requests.post(
            "http://service2:13002/api/pre_purchase",
            data={"kurza": request.form.get("kurza")},
        ).text


@app.route("/api/login", methods=["POST"])
def login():
    if request.method == "POST":
        return requests.post(
            "http://service3:13003/api/login",
            data={
                "username": request.form.get("username"),
                "password": request.form.get("password"),
            },
        ).text


@app.route("/api/history", methods=["POST"])
def history():
    if request.method == "POST":
        return requests.post(
            "http://service3:13003/api/history", data={"jwt": request.form.get("jwt")}
        ).text


@app.route("/api/purchase", methods=["POST"])
def purchase():
    if request.method == "POST":
        return requests.post(
            "http://service3:13003/api/purchase",
            data={
                "key": request.form.get("key"),
                "jwt": request.form.get("jwt"),
                "kurza": request.form.get("kurza"),
            },
        ).text


if __name__ == "__main__":
    app.run(debug=False, host="0.0.0.0", port=13000)

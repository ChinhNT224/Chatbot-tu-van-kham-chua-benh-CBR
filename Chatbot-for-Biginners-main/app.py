# import files
from flask import Flask, render_template, request

app = Flask(__name__)


@app.route("/")
def home():
    return render_template("index.html")


@app.route("/get")
def get_bot_response():
    userText = request.args.get('msg')
    return get_ans(userText)


def get_ans(text):
    return benh[0] + text


if __name__ == "__main__":
    app.run()


from flask import Flask
from flask import render_template
app = Flask(__name__)


@app.route('/')
def helloworld():
    return "hellow world"

@app.route('/blog')
def blog():
    return "My Blog"


if __name__ == '__main__':
    app.run(host='0.0.0.0',port=8081)
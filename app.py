# This is a simple Flask application

from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, Simple Flask App'
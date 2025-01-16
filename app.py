from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return 'Hey, welcome to Docker Session by sourav. Flask app is running successfully.'

@app.route('/health')
def health():
    return 'Server is up and running'

if __name__ == "__main__":
    app.run(debug=True)
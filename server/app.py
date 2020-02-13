from flask import Flask, send_from_directory

app = Flask(__name__, static_url_path='')


@app.route('/')
def root():
    return send_from_directory('../client/dist/', 'index.html')

if __name__ == '__main__':
    app.run()
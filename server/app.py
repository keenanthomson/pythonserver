from flask import Flask, send_from_directory

app = Flask(__name__, static_folder='../client/dist')


@app.route('/<path:filename>')
def root(filename):
    return send_from_directory('../client/dist/', filename)

if __name__ == '__main__':
    app.run()
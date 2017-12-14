from flask import Flask

def create_app():
    app = Flask(__name__)

    @app.route('/')
    def index():
        return "hallo dunia!"


    @app.route('/about')
    def about():
        return "Halaman About"


    @app.route('/contact')
    def contact():
        return "Halaman Contact"

    return app


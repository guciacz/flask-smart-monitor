import os
basedir = os.path.abspath(os.path.dirname(__file__))


class Config(object):
    ADMIN = os.environ.get('ADMIN') or 'davecrands@gmail.com'
    SECRET_KEY = os.environ.get('SECRET_KEY') or 'secret-secrets-are-no-fun'
    SQLALCHEMY_DATABASE_URI = os.environ.get('DATABASE_URL') or \
        'sqlite:///' + os.path.join(basedir, 'app.db')
    SQLALCHEMY_TRACK_MODIFICATIONS = False
    SENDGRID_API_KEY = os.environ.get('SENDGRID_API_KEY')
    WEATHER_API_KEY = os.environ.get('WEATHER_API_KEY') or 'nice-try'
    LONGITUDE = os.environ.get('LONGITUDE') or -73.9976
    LATITUDE = os.environ.get('LATITUDE') or 40.9622
    YT_EMBED = os.environ.get('YT_EMBED') or 'XEfDYMngJeE'

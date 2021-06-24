import os

DATABASES = {
    'default': 'database',
    'database': {
        'driver': os.getenv('DB_CONNECTION'),
        'host': os.getenv('DB_HOST'),
        'port': os.getenv('DB_PORT'),
        'database': os.getenv('DB_DATABASE'),
        'user': os.getenv('DB_USER'),
        'password': os.getenv('DB_PASS'),
        'prefix': ''
    }
}
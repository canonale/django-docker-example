"""
WSGI config for example project.

It exposes the WSGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/1.11/howto/deployment/wsgi/
"""

import os

from django.core.wsgi import get_wsgi_application
from django.core.management import call_command
from django.conf import settings

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "example.settings")

application = get_wsgi_application()

if not settings.DEBUG:
    print('*** Starting up...')
    call_command('bootload')

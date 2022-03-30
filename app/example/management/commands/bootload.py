from django.core.management.base import BaseCommand, CommandError
from django.core.management import call_command


class Command(BaseCommand):
    help = '''
        Django command orchestration
    '''

    def handle(self, *args, **options):
        try:
            print('*** Calling migrate...')
            call_command('migrate', '--noinput')

            print('*** Calling collectstatic...')
            call_command('collectstatic', '--noinput')
        except Exception as e:
            raise CommandError(f'There was an error: {e}')

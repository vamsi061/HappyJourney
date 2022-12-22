git clone https://github.com/vamsi061/HappyJourney.git

Download and install python & xampp server

C:\Python34\Scripts\pip

python -m pip install django

Then Apache & mysql server

Then create HappyJourney database

python -m pip install mysqlclient

python -m pip install pillow

python manage.py migrate

python manage.py makemigrations Travelling

python manage.py createsuperuser

	Enter username & set password
	
python manage.py runserver

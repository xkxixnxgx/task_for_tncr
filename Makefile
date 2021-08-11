run:
	gunicorn -b localhost:5000 -w 1 api:app

test:
	pytest

up:
	docker-compose up

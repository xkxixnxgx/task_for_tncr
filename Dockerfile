FROM python:3.7.8-slim

ENV PYTHONFAULTHANDLER=1 \
  PYTHONUNBUFFERED=1 \
  PYTHONHASHSEED=random \
  PIP_NO_CACHE_DIR=off \
  PIP_DISABLE_PIP_VERSION_CHECK=on \
  PIP_DEFAULT_TIMEOUT=100


WORKDIR /app
RUN apt update && apt upgrade -y && apt install gcc -y
RUN pip install poetry

COPY pyproject.toml poetry.lock /app/
RUN poetry config virtualenvs.create false
RUN poetry install

EXPOSE 5000 5000

COPY . /app/

CMD ["gunicorn"  , "-b", "127.0.0.1:5000", "api:app"]
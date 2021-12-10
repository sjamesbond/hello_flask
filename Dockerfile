FROM python:3

RUN apt-get update && apt-get install -y gunicorn
RUN mkdir /app
RUN mkdir /gunicorn

WORKDIR /app

RUN pip install gunicorn flask

COPY . /app

EXPOSE 8000

CMD ["gunicorn" , "-b", "0.0.0.0:8000", "wsgi:app"]

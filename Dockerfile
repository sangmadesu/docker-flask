FROM python:2.7-alpine
MAINTAINER Muh Handry Wahyudi <wahyudihandry@gmail.com>

ENV INSTALL_PATH /web_app
RUN mkdir -p INSTALL_PATH

WORKDIR $INSTALL_PATH

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

CMD gunicorn -b 0.0.0.0 --access-logfile - "web_app.app:create_app()"
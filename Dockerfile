FROM nikolaik/python-nodejs:latest
MAINTAINER Adam Kochanowski <adam.kochanowski@gmail.com>

RUN apt-get update
RUN apt-get install -y wget

ENV PYTHONUNBUFFERED 1

RUN mkdir /project
WORKDIR /project

RUN apt-get update
RUN apt-get install -y mc unzip apt-utils

ADD . /project/
RUN pip install --upgrade pip
RUN pip install -r fet_server/requirements/develop.txt

EXPOSE 8000 8080

CMD chmod 777 entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]

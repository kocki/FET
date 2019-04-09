FROM nikolaik/python-nodejs:latest
MAINTAINER Adam Kochanowski <adam.kochanowski@gmail.com>

RUN apt-get update
RUN apt-get install -y wget

ENV PYTHONUNBUFFERED 1
RUN mkdir /code

WORKDIR /code/media
RUN apt-get update
RUN apt-get install -y mc unzip apt-utils curl apt-transport-https
#RUN apt-get -y install fonts-dejavu
#RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
#RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
#RUN apt-get update && apt-get install yarn

WORKDIR /code


ADD develop.txt /code/
RUN pip install --upgrade pip
RUN pip install -r develop.txt

ADD . /code/
EXPOSE 8000 8080

CMD chmod 777 entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]

FROM python:3.10.5-buster

WORKDIR /service
COPY . .

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install python3
RUN pip3 install flask
RUN pip3 install PyJWT

CMD python3 main.py
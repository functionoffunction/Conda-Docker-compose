FROM continuumio/anaconda3:latest

ADD ./requirements.txt /

RUN apt update
RUN apt-get -y install gcc 
RUN pip install --upgrade setuptools && pip install -r requirements.txt

EXPOSE 8888

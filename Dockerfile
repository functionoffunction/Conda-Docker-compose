FROM continuumio/anaconda3:latest

ENV PATH="/scripts:${PATH}"

ADD ./requirements.txt /

RUN apt update
RUN apt-get -y install gcc 
RUN pip install --upgrade setuptools && pip install -r requirements.txt

COPY ./scripts/ /scripts/
RUN chmod +x /scripts/*

USER root

RUN jupyter notebook --generate-config

CMD ["entrypoint.sh"]
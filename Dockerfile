FROM continuumio/anaconda3:latest

ENV PATH="/scripts:${PATH}"

ADD ./requirements.txt /
RUN apt-get update && \
    apt-get install -y gcc && \
    pip install --upgrade setuptools && \
    pip install -r requirements.txt

COPY ./scripts/ /scripts/
RUN chmod +x /scripts/*

RUN jupyter notebook --generate-config

COPY ./scripts/entrypoint.sh /entrypoint.sh 
RUN chmod +x /entrypoint.sh

RUN mkdir /notebooks

RUN adduser --disabled-password --gecos '' user

RUN chown -R user:user /notebooks
RUN chmod -R 777 /notebooks

USER user

WORKDIR /notebooks

CMD ["/entrypoint.sh"]
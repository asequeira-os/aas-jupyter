FROM python:3.7.3-stretch

RUN apt-get update && apt-get clean

RUN python -m pip install --upgrade pip
RUN python -m pip install jupyter

COPY docker/jupyter.sh /root

WORKDIR /jupyter

ENTRYPOINT ["/root/jupyter.sh"]

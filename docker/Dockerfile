FROM python:3.7.3-stretch

RUN apt-get update && apt-get clean
RUN apt-get install libmagickwand-dev

RUN python -m pip install --upgrade pip
RUN python -m pip install pipenv
RUN mkdir -p /jupyter

COPY docker/jupyter.sh /root
COPY Pipfile /jupyter
COPY Pipfile.lock /jupyter
RUN cd /jupyter && pipenv install

WORKDIR /jupyter

#ENTRYPOINT bash
ENTRYPOINT ["/root/jupyter.sh"]

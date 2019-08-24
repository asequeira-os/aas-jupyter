FROM python:3.7.3-stretch

RUN apt-get update && apt-get clean
RUN apt-get install libmagickwand-dev

RUN python -m pip install --upgrade pip
RUN mkdir -p /jupyter

COPY docker/jupyter.sh /root
RUN cd /jupyter

RUN pip install image jupyter keras matplotlib numpy pandas pillow PIP scipy scikit-learn
RUN pip install seaborn shapely tensorflow Wand descartes

WORKDIR /jupyter

ENTRYPOINT ["/root/jupyter.sh"]

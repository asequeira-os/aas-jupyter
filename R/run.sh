#!/usr/bin/env bash
MYDIR=$(dirname ${BASH_SOURCE})
docker build -t aas-jupyter-r ${MYDIR}

: ${NOTEBOOK_DIR?set path to the notebooks dir. appears as work dir}
docker run -p 8888:8888 -v "${NOTEBOOK_DIR}":/home/jovyan/work aas-jupyter-r

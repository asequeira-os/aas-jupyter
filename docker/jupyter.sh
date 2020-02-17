#!/usr/bin/env bash
: ${NOTEBOOK_DIR?please set}

cd /jupyter
jupyter notebook --ip=0.0.0.0 --allow-root --no-browser --notebook-dir "${NOTEBOOK_DIR}"

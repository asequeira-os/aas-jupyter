# Jupyter in docker
Run jupyter notebooks in docker.
 
Notebooks are saved in the host file system.

## Python
### Installation

1. clone the repo
2. create a dir for notebooks. This needs to be under the docker host user's home dir (can be deep). e.g. `~/notebooks`
3. Run `NOTEBOOK_DIR=notebooks ./run.sh`
  * note that NOTEBOOK_DIR is specified as a relative path to home.

When the notebook is ready, open http://localhost:8888 and use the token seen in the docker run output for login.


## dir mount note
Container mounts the host home dir at `/hdir`

## R
```bash
NOTEBOOK_DIR=<full path to notebooks dir> <this repo>/R/run.sh 
```

## R Studio
```bash
NOTEBOOK_DIR=<full path to notebooks dir> /R/studio/run
```

The script builds the image, runs the container, opens Rstudio in browser.

The notebook dir will appear as `<HONE>/Documents` in the RStduio

More libraries can be added by modifying 
[R/studio.Dockerfile](./R/studio/Dockerfile)
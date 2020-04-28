# Notebooks and RStudio
This repo contains setup for three different docker based environments.
- Jupyter notebooks for python
- Jupyter notebooks for R
- R Studio

## Jupyter notebooks in docker
Run jupyter notebooks in docker.
 
Notebooks are saved in the host file system.

### Python notebooks
#### Installation

1. clone the repo
2. create a dir for notebooks. This needs to be under the docker host user's home dir (can be deep). e.g. `~/notebooks`
3. Run `NOTEBOOK_DIR=notebooks ./run.sh`
  * note that NOTEBOOK_DIR is specified as a relative path to home.

When the notebook is ready, open http://localhost:8888 and use the token seen in the docker run output for login.


#### dir mount note
Container mounts the host home dir at `/hdir`

### R notebooks
```bash
NOTEBOOK_DIR=<full path to notebooks dir> <this repo>/R/run.sh 
```

## R Studio in Docker
Run RStudio in docker with web browser as UI.
```bash
NOTEBOOK_DIR=<full path to notebooks dir> <this repo>/R/studio/run
```

The script builds the image (takes a long time to install all the libs - first time only),
runs the container, opens Rstudio in web browser.

The notebook dir will appear as `<HONE>/Documents` in the RStduio

More libraries can be added by modifying 
[R/studio.Dockerfile](./R/studio/Dockerfile)

# Issues
Inconsistent ways (relative vs absolute) of specifying notebook dir path (will fix later).

Not yet publishing any of the images to any docker repository.

# Dependencies
See the corresponding Dockerfile.


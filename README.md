# 🐳  Docker Container *cs-latex-docker*

[![Docker Hub](https://img.shields.io/badge/Visit-Docker%20Hub-blue)](https://hub.docker.com/repository/docker/123marvin123/cs-latex-docker/general)

TeXLive Docker Image for Computer Science, including software such as ```tlmgr```, ```python3```, ```pygments```, ```inkscape```, ```biber``` and a lot more.

This image is mainly used for ```ARM64```-based systems, such as on Apple Silicon.

# Running

```
docker run -it -v /host/directory:/home 123marvin123/cs-latex-docker
```

And then you can execute ```latexmk```, for example:

```
latexmk -lualatex
```

# Building

```
docker build -t "123marvin123/cs-latex-docker" .
```

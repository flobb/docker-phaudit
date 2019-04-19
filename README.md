# Phaudit

[![Docker Stars](https://img.shields.io/docker/stars/solune/phaudit.svg?style=flat)](https://hub.docker.com/r/solune/phaudit/)
[![Docker Pulls](https://img.shields.io/docker/pulls/solune/phaudit.svg?style=flat)](https://hub.docker.com/r/solune/phaudit/)

Docker image with useful tools to audit a PHP project.

*Warning: You must mount a directory to `/srv` to make the entrypoint work (it change you to www-data user).*

## Usage

Don't share your local `.composer` folder to the container.


```bash
$ docker run -it --rm \
    -v "$PWD":/srv \
    solune/phaudit:latest \
    sh
```

## More documentation ?

Adapted from [jolicode/phaudit](https://hub.docker.com/r/jolicode/phaudit/)
and from [mykiwi/phaudit](https://hub.docker.com/r/mykiwi/phaudit/)

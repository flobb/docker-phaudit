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

## Available tools

[PHP Static Analysis Tool](https://github.com/phpstan/phpstan) as `phpstan`
[PhpDependencyAnalysis](https://github.com/mamuz/PhpDependencyAnalysis) as `phpda`
[Twig Coding Standards](https://github.com/allocine/twigcs) as `twigcs`
[PHP Coding Standards Fixer](https://github.com/FriendsOfPHP/PHP-CS-Fixer) as `php-cs-fixer`
[YAML Linter](https://github.com/HeahDude/yaml-linter) as `yaml-linter`
[PHP_Depend](https://github.com/pdepend/pdepend) as `pdepend`
[Phan](https://github.com/phan/phan) as `phan`
[PHP Mess Detector](https://github.com/phpmd/phpmd) as `phpmd`
[Deptrac](https://github.com/sensiolabs-de/deptrac) as ?
[Security Checker](https://github.com/sensiolabs/security-checker) as `security-checker`

## More documentation ?

Adapted from [jolicode/phaudit](https://hub.docker.com/r/jolicode/phaudit/)
and from [mykiwi/phaudit](https://hub.docker.com/r/mykiwi/phaudit/)

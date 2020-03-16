FROM solune/symfony:7.4-alpine-cli

RUN apk add --no-cache graphviz

# http://symfony.com/doc/current/performance.html
RUN echo "memory_limit = 2048M" >> /usr/local/etc/php/zzphaudit.ini \
    && echo "max_execution_time = -1" >> /usr/local/etc/php/conf.d/zzphaudit.ini

RUN mkdir -p /usr/local/composer/vendor/bin

ENV PATH /usr/local/composer/vendor/bin:$PATH
ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_HOME /usr/local/composer

RUN cd /usr/local/composer; \
    composer global init --no-interaction; \
    composer global require --optimize-autoloader \
        bamarni/composer-bin-plugin \
        hirak/prestissimo; \
    composer bin phpmetrics require --optimize-autoloader \
        phpmetrics/phpmetrics; \
    composer bin phpstan require --optimize-autoloader \
        phpstan/phpstan \
        phpstan/phpstan-doctrine \
        phpstan/phpstan-phpunit \
        phpstan/phpstan-strict-rules \
        phpstan/phpstan-beberlei-assert \
        phpstan/phpstan-webmozart-assert \
        phpstan/phpstan-symfony; \
    composer bin php-dependency-analysis require --optimize-autoloader \
        mamuz/php-dependency-analysis; \
    composer bin symfony-friendly require --optimize-autoloader \
        friendsoftwig/twigcs \
        friendsofphp/php-cs-fixer \
        heahdude/yaml-linter \
        pdepend/pdepend \
        phan/phan \
        phpmd/phpmd \
        sensiolabs-de/deptrac-shim \
        sensiolabs/security-checker; \
    composer clear-cache

ENTRYPOINT ["entrypoint"]
WORKDIR /srv

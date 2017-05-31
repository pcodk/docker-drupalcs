FROM php:7.0-cli

RUN pear install PHP_CodeSniffer-2.7.0

COPY coder_sniffer/Drupal /usr/local/lib/php/PHP/CodeSniffer/Standards/Drupal
COPY coder_sniffer/DrupalPractice /usr/local/lib/php/PHP/CodeSniffer/Standards/DrupalPractice

RUN phpcs --config-set severity 1
RUN phpcs --config-set colors 1
RUN phpcs --config-set default_standard Drupal

WORKDIR /var/www/html

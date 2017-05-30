FROM pcodk/phpcs

COPY coder_sniffer/Drupal /usr/local/lib/php/PHP/CodeSniffer/src/Standards/
COPY coder_sniffer/DrupalPractice /usr/local/lib/php/PHP/CodeSniffer/src/Standards/
RUN phpcs --config-set default_standard Drupal

FROM pcodk/phpcs

COPY coder_sniffer/Drupal /usr/local/lib/php/PHP/CodeSniffer/Standards/
COPY coder_sniffer/DrupalPractice /usr/local/lib/php/PHP/CodeSniffer/Standards/
RUN phpcs --config-set default_standard Drupal

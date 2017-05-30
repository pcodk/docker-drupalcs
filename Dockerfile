FROM pcodk/phpcs

COPY coder_sniffer/Drupal /usr/local/lib/php/PHP/CodeSniffer/Standards/Drupal
COPY coder_sniffer/DrupalPractice /usr/local/lib/php/PHP/CodeSniffer/Standards/DrupalPractice
RUN phpcs --config-set default_standard Drupal

FROM php:8.1.0RC4-cli

COPY includes /includes
COPY bench.php /bench.php

WORKDIR /

CMD [ "php", "bench.php" ]

FROM php:8.0.1-cli

COPY includes /includes
COPY bench.php /bench.php

WORKDIR /

CMD [ "php", "bench.php" ]

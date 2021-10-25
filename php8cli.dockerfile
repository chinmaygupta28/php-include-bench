FROM php:7.4.25-cli

COPY includes /includes
COPY bench.php /bench.php

WORKDIR /

CMD [ "php", "bench.php" ]

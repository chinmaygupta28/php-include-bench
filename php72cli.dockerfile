FROM php:7.2-cli

COPY includes /includes
COPY bench.php /bench.php

WORKDIR /

CMD [ "php", "bench.php" ]

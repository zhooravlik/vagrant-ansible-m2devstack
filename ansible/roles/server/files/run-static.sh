#!/usr/bin/env bash
echo -e "RUNING STATIC TESTS. Result at static-result.txt"
php /var/www/magento-ce/vendor/bin/phpunit -c /var/www/magento-ce/dev/tests/static/phpunit.xml.dist > static-result.txt

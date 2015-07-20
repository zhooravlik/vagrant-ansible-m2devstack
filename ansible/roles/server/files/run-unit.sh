#!/usr/bin/env bash
echo "RUNNING UNIT TESTS. Results at unit-result.txt"
php /var/www/magento-ce/vendor/phpunit/phpunit/phpunit -c /var/www/magento-ce/dev/tests/unit/phpunit.xml.dist > unit-result.txt

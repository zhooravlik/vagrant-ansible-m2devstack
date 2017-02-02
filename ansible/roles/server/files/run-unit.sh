#!/usr/bin/env bash
M2PATH="/var/www/magento-ce"
echo "RUNNING UNIT TESTS. Results at unit-result.txt"
cd ${M2PATH}
php vendor/phpunit/phpunit/phpunit -c dev/tests/unit/phpunit.xml.dist > /var/www/magento-tests/unit-result.txt

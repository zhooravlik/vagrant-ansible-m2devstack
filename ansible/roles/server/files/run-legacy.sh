#!/usr/bin/env bash
M2PATH="/var/www/magento-ce"
echo -e "RUNING STATIC TESTS. Result at static-legacy-result.txt"
cd ${M2PATH}
php vendor/bin/phpunit -c dev/tests/static/phpunit.xml.dist dev/tests/static/testsuite/Magento/Test/Legacy/  > /var/www/magento-tests/static-legacy-result.txt

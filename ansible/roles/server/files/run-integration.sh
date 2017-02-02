#!/usr/bin/env bash
M2PATH="/var/www/magento-ce"
echo -e "RUNING INTEGRATION TESTS. Results at integration-result.txt"
cd ${M2PATH}
php vendor/bin/phpunit -c /var/www/magento-ce/dev/tests/integration/phpunit.xml.dist > /var/www/magento-tests/integration-result.txt

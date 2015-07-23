#!/usr/bin/env bash
M2PATH="/var/www/magento-ce"
echo "RUNNING INTEGRITY TESTS. Results and integrity-result.txt"
cd ${M2PATH}
php vendor/bin/phpunit -c /var/www/magento-ce/dev/tests/integration/phpunit.xml.dist testsuite/Magento/Test/Integrity > /var/www/magento-tests/integrity-result.txt

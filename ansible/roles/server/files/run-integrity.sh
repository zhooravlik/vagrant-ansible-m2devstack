#!/usr/bin/env bash
echo "RUNNING INTEGRITY TESTS. Results and integrity-result.txt"
php /var/www/magento-ce/vendor/bin/phpunit -c /var/www/magento-ce/dev/tests/integration/phpunit.xml.dist testsuite/Magento/Test/Integrity > integrity-result.txt

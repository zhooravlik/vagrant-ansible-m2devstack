#!/usr/bin/env bash
echo -e "RUNING INTEGRATION TESTS. Results at integration-result.txt"
php /var/www/magento-ce/vendor/bin/phpunit -c /var/www/magento-ce/dev/tests/integration/phpunit.xml.dist > integration-result.txt

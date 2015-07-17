#!/usr/bin/env bash
echo -e "------------RUN INTEGRATION TESTS--------------:"
OUTPUT="$(php ../magento-ce/vendor/bin/phpunit -c ../magento-ce/dev/tests/integration/phpunit.xml.dist)"
echo "${OUTPUT}"
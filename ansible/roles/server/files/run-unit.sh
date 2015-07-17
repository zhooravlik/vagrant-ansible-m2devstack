#!/usr/bin/env bash
echo -e "------------RUN UNIT TESTS--------------:"
OUTPUT="$(php ../magento-ce/vendor/phpunit/phpunit/phpunit -c ../magento-ce/dev/tests/unit/phpunit.xml)"
echo "${OUTPUT}"
#!/usr/bin/env bash
echo -e "------------RUN STATIC TESTS--------------:"
OUTPUT="$(php ../magento-ce/vendor/bin/phpunit -c ../magento-ce/dev/tests/static/phpunit.xml.dist > static_report.txt)"
echo "${OUTPUT}"
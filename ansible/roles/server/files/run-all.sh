#!/usr/bin/env bash
./run-unit.sh
echo "Unit tests complete"
./run-static.sh
echo "Static tests complete"
./run-integrity.sh
echo "Integrity tests complete"
./run-integration.sh
echo "Integration tests complete"

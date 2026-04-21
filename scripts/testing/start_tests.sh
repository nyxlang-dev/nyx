#!/bin/bash
cd "$(dirname "$0")/.." 
chmod +x verify_environment.sh run_bootstrap_tests.sh run_single_test.sh setup_tests.sh
./verify_environment.sh

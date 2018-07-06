#!/bin/sh

set -e

# Start both nodes
_build/prod+magnumopus/rel/cohort/bin/cohort start
_build/prod+obsequilis/rel/cohort/bin/cohort start

# Run takeover/failover tests
escript scripts/cohort_test.erl

# Clean up
_build/prod+magnumopus/rel/cohort/bin/cohort stop
_build/prod+obsequilis/rel/cohort/bin/cohort stop


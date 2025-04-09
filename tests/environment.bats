#!/usr/bin/env bats

load "${BATS_PLUGIN_PATH}/load.bash"

@test "Runs successfully" {
  run "$PWD/hooks/environment"

  assert_success
  # `run` works in a subshell, so env vars aren't available to test. Can't work out how to verify this
  # assert [ "$BUILDKITE_REPO" == "" ]
}

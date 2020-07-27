#!/usr/bin/env bats

# Load BATS submodules
load test_helper/bats-support/load
load test_helper/bats-assert/load
load test_helper/bats-file/load

@test "running lxb.sh without any parameters should return non-zero status" {
    run ./src/lxb.sh
    assert_failure
}

@test "running lxb.sh without any parameters should respond with short help doc" {
    run ./src/lxb.sh
    assert_output --partial '--help'
}
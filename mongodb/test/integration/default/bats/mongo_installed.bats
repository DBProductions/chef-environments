#!/usr/bin/env bats

@test "mongod is found" {
  run which mongod
  [ "$status" -eq 0 ]
}

@test "mongoimport is found" {
  run which mongoimport
  [ "$status" -eq 0 ]
}
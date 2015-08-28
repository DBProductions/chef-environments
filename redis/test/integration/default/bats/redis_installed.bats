#!/usr/bin/env bats

@test "redis-server is found" {
  run which redis-server
  [ "$status" -eq 0 ]
  [ "$output" = "/usr/local/bin/redis-server" ]
}

@test "redis-cli is found" {
  run which redis-cli
  [ "$status" -eq 0 ]
}

#!/usr/bin/env bats

@test "memcached is found" {
  run which memcached
  [ "$status" -eq 0 ]
  [ "$output" = "/usr/bin/memcached" ]
}

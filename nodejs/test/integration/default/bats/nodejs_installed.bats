#!/usr/bin/env bats

@test "nodejs is found" {
  run which node
  [ "$status" -eq 0 ]
  [ "$output" = "/usr/bin/node" ]
}

@test "npm is found" {
  run which npm
  [ "$status" -eq 0 ]
  [ "$output" = "/usr/bin/npm" ]
}

@test "pm2 is found" {
  run which pm2
  [ "$status" -eq 0 ]
  [ "$output" = "/usr/bin/pm2" ]
}

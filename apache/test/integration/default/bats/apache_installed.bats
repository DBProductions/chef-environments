#!/usr/bin/env bats

@test "apache2 is found" {
  run which apache2
  [ "$status" -eq 0 ]
}

@test "apache2ctl is found" {
  run which apache2ctl
  [ "$status" -eq 0 ]
}

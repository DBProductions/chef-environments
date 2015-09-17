#!/usr/bin/env bats

@test "mysqld is found" {
  run which mysqld
  [ "$status" -eq 0 ]
  [ "$output" = "/usr/sbin/mysqld" ]
}

@test "mysql is found" {
  run which mysql
  [ "$status" -eq 0 ]
  [ "$output" = "/usr/bin/mysql" ]
}

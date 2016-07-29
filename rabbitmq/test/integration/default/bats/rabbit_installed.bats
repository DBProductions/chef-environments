#!/usr/bin/env bats

@test "rabbitmq-server is found" {
  run which rabbitmq-server
  [ "$status" -eq 0 ]
  [ "$output" = "/usr/sbin/rabbitmq-server" ]
}

@test "rabbitmq-plugins is found" {
  run which rabbitmq-plugins
  [ "$status" -eq 0 ]
  [ "$output" = "/usr/sbin/rabbitmq-plugins" ]
}

@test "rabbitmqctl is found" {
  run which rabbitmqctl
  [ "$status" -eq 0 ]
}

#@test "rabbitmqctl list right user configuration" {
#  run sudo rabbitmqctl list_users
#  [ "$status" -eq 0 ]
#  [ "$output" = "Listing users ...\nguest	[]\nrabbit	[management]\n...done." ]
#}

@test "rabbitmqadmin is found" {
  run which rabbitmqadmin
  [ "$status" -eq 0 ]
}

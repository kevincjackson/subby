#!/usr/bin/env bats

@test "bats testing works" {
  result="$(echo hello)"
  [ "$result" = "hello" ]
}

@test "subby exists" {
  result="$(bundle exec bin/subby -h)"
}

@test "no args errors" {
  run bundle exec bin/subby
  [ "$status" -ne 0 ]
}

@test "-o with 1 arg succeeds" {
  echo "" | bundle exec bin/subby -o camel arg1 arg2
}

@test "no options 1 arg errors " {
  run bundle exec bin/subby arg1 
  [ "$status" -ne 0 ]
}

@test "2 args succeeds" {
  echo "" | bundle exec bin/subby arg1 arg2
}

@test "3 args errors" {
  run bundle exec bin/subby arg1 arg2 arg3
  [ "$status" -ne 0 ]
}

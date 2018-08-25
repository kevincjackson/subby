#!/usr/bin/env bats

@test "bats testing works" {
  result="$(echo hello)"
  [ "$result" = "hello" ]
}

@test "subby exists" {
  result="$(bundle exec bin/subby -h)"
}

@test "no args produces an error" {
  run bundle exec bin/subby
  [ "$status" -ne 0 ]
}

@test "one arg only produces an error" {
  run bundle exec bin/subby arg1 
  [ "$status" -ne 0 ]
}

@test "two args produces no error" {
  echo "" | bundle exec bin/subby arg1 arg2
}

@test "three args produces an error" {
  run bundle exec bin/subby arg1 arg2 arg3
  [ "$status" -ne 0 ]
}

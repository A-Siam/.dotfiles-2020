#!/usr/bin/env bash
# run config from arch wiki
function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

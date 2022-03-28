#!/usr/bin/env bash
if hash apt 2>/dev/null; then
  apt update && apt upgrade
  apt install $1
else
  echo -e "apt is not a valid binary"
fi

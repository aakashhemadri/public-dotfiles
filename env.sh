#!/usr/bin/env bash
#
# Initialize a dotfile repository using dots by downloading and executing the
# bootsrap script.
#
# This script must be sourced!

[[ $_ == $0 ]] && echo "Please source me!" && exit 1

export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CACHE_HOME=$HOME/.cache
export DOTS_SOURCE=$HOME/.local/etc

return 0

#!/usr/bin/env bash
#
# Initialize a dotfile repository using dots by downloading and executing the
# bootsrap script.
#
# This script must be sourced!

[[ $_ == $0 ]] && echo "Please source me!" && exit 1

# I am using the latest master builds of dots. See the bootstrap config for
# details on avaiable version constraints.
DOTS_RELEASE="latest"

DOTS_CLONE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source /dev/stdin <<<"$(curl --silent --show-error --location \
    https://github.com/EvanPurkhiser/dots/releases/download/v2.0.0-alpha.1/bootstrap)"

source $HOME/.local/etc/env.sh

return 0

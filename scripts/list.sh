#!/usr/bin/env bash
DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

echo -e "$YEL*** Installing $PUR${DIR#$DOTS_SOURCE/}/$(basename $0 .install)$RST"

if sed -r '/^#/d' $DIR/$(basename $0 .install) | pacman -Qi - > /dev/null 2> /dev/null ; then
    echo -e "==> No packages to install... skipping.$RST"
  else
    source $DOTS_SOURCE/scripts/aur.sh
    sed -r '/^#/d' $DIR/$(basename $0 .install) | yay -Syu --needed --noconfirm --norebuild --noredownload -
fi
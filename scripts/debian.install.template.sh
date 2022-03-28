#!/usr/bin/env bash
set -x

DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

echo -e "$YEL*** Installing $PUR${DIR#$DOTS_SOURCE/}/$(basename $0 .install)$RST"

PKG_LIST=$(sed -r '/^#/d' $DIR/$(basename $0 .install))
PKG_COUNT=$(echo $PKG_LIST | wc -w)
PKG_INSTALLED_COUNT=$(($(apt list --installed $PKG_LIST 2>/dev/null | wc -l)-1))

if [[ ${PKG_INSTALLED_COUNT} == ${PKG_COUNT} ]]  ; then
    echo -e "==> No packages to install... skipping.$RST"
else
	source $DOTS_SOURCE/scripts/apt.sh $PKG_LIST
fi

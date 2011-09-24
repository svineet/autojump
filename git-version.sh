#!/usr/bin/env bash
# add git revision to autojump
gitrevision=`git describe`
if [[ $(git diff --shortstat 2> /dev/null | tail -n1) != "" ]]; then
    gitrevision=$gitrevision"-dirty"
fi
sed -i "s/^AUTOJUMP_VERSION = \".*\"$/AUTOJUMP_VERSION = \"$gitrevision\"/" autojump

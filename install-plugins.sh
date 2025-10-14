#!/usr/bin/env sh

# plugins
cmd=pycharm
if uname | grep -q "^MINGW"; then
  cmd="$HOME"/AppData/Local/JetBrains/Toolbox/scripts/pycharm.cmd
fi

$cmd installPlugins \
IdeaVIM \
StringToolsPlugin \
com.jetbrains.kmm \
com.joshestein.ideavim-quickscope \
eu.theblob42.idea.whichkey

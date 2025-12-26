#!/usr/bin/env sh

# plugins
cmd=pycharm
if uname | grep -q "^MINGW"; then
  if command -v pycharm.cmd >/dev/null 2>&1; then
    cmd=pycharm.cmd
  elif command -v idea64 >/dev/null 2>&1; then
    cmd=pycharm64
  else
    echo "Warning: neither pycharm.cmd nor pycharm64 found, falling back to pycharm"
  fi
fi

$cmd installPlugins \
  IdeaVIM \
  StringToolsPlugin \
  com.fwdekker.randomness \
  com.github.camork.fileExpander \
  com.joshestein.ideavim-quickscope \
  com.julienphalip.ideavim.peekaboo \
  com.joshestein.ideavim-quickscope \
  eu.theblob42.idea.whichkey \
  indent-rainbow.indent-rainbow \
  izhangzhihao.rainbow.brackets.lite \
  org.asciidoctor.intellij.asciidoc \
  org.sonarlint.idea

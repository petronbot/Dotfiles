#!/usr/bin/env bash
#
# Set up Sublime Text to be used on the command line
# https://www.sublimetext.com/docs/3/osx_command_line.html

mkdir -p ~/bin

if [[ ":$PATH:" != *":$HOME/bin:"* ]]
	then
	export PATH=$PATH:$HOME/bin
fi

# Symlink a `subl` command
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ~/bin/subl
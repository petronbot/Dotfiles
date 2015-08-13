#Petch's dotfiles

##dotfiles

This repo represents the current state of my workspace configuration. The aim of this repo is documentation as much as automation.

I don't move computers often but when I do, it's a massive pain in the butt.

Riding on the coat-tails of some smart people who have been doing this [longer than I have][1] I thought I'd try to streamline my apps, configs and special-snowflake preferences.


##todo

- [x] Include Homebrew install and dependencies
- [ ] Include rest of app prefs (Sublime etc)
- [ ] Include some IRL dotfiles
- [ ] Include a script to symlink:
	- [ ] /homebrew/Brewfile > ~/Brewfile
	- [ ] /iterm/com.googlecode.iterm2.plist > ~/Libaray/Preferences/com.googlecode.iterm2.plist
	- [ ] /sublime-text > ~/Applications/Sublime\ Text\ 3/Packages/Users
	- [x] "/Applications/Sublime Text 3.app/Contents/SharedSupport/bin/subl" ~/bin/subl
- [x] Include an install script to run:
	- [x] /homebrew/install.sh
	- [x] /sublime-text/install.sh
- [ ] Include a bootstrap script to put it all together:
	- [ ] Set up symlinks
	- [ ] Run installs


-----


[1]: http://dotfiles.github.io/
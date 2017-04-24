# dotfiles

My personal configuration for desktop/workstation. Contains my customized
settings that fit with my needs in software development environment, includes
some configuration of frequent used programs:

* Vim
* Zsh
* Tmux
* Mutt
* Vimperator
* Git
* Bash

And configuration for some less used programs:

* Vifm
* Elinks
* Midnight Commander

Most of those config file are based on Vim key bindings.

Prerequisites
-------------

On Debian/Ubuntu system:

	sudo apt install vim zsh tmux mutt fetchmail procmail git vifm elinks mc stow

Install vimperator addon for Firefox:
https://addons.mozilla.org/en-US/firefox/addon/vimperator/

Optional for Zsh:
Install [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh). A configuration
framework Zsh shell. It makes my terminal more fancy.

Optional for Vim:
Install [base16-shell](https://github.com/chriskempson/base16-shell). Custom
shell colorscheme which allow me to have unified colors in all my command
line applications.  
Install [Powerline Fonts](https://github.com/powerline/fonts). Display
symbol for powerline icons used for Vim Airline status bar and Zsh shell prompt.  
Install [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts). Display
icons on Vim Airline status bar and Vim Nerdtree explorer pane.

Usage
-----

	git clone --recursive https://github.com/dstw/dotfiles.git

### Installation

I treat all of this configuration files and folders as symbolic link.
For easy installation, I will use GNU Stow.  
**Caution: if the configuration files already exist, you must move or delete
them first. Otherwise, this installation process will fail.**

	cd dotfiles/
	stow bash
	stow elinks
	stow git
	stow mc
	stow mutt
	stow tmux
	stow vifm
	stow vim
	stow vimperator
	stow zsh

### Manual Installation

Create symbolic links for the configurations you want to use, e.g. for Vim:

	ln -s vim/.vimrc ~/.vimrc
	ln -s vim/.vimrc_background ~/.vimrc_background
	ln -s vim/.vim ~/.vim

Additional requirements for fetchmail & procmail, manually create log files:

	touch ~/.fetchmail.log ~/.procmail.log

**Notes for specific credential:**  
The following files, contain per user credential information, need to edit
before use:

* .gitconfig
* .fetchmailrc
* .procmailrc
* .mutt/credential
* .mutt/mailboxes

Screenshots
-----------

![terminal1](https://github.com/dstw/dotfiles/raw/master/screenshots/terminal1.png)

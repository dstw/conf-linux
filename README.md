# dotfiles

My personal configuration for desktop/workstation. Contain some customized 
settings, includes:

* Zsh
* Tmux
* Vim
* Mutt
* Elinks
* Midnight Commander
* Git

Prerequisites
-------------

On Debian system:

	sudo apt install zsh tmux vim mutt elinks mc git stow

Install [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh).  
Install [base16-shell](https://github.com/chriskempson/base16-shell). 
Install [Powerline Fonts](https://github.com/powerline/fonts).  
Install [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts).

Usage
-----

	git clone --recursive git@github.com:dstw/dotfiles.git

### Installation

Using GNU Stow.

	cd dotfiles/
	stow zsh
	stow tmux
	stow vim
	stow mutt
	stow elinks
	stow mc
	stow git

### Manual Installation

Create symbolic links for the configurations you want to use, e.g. for vim:

	ln -s vim/.vimrc ~/.vimrc

Notes for Mutt & Git:  
Don't forget to edit .gitconfig and .muttrc as they contain email settings which
is unique among different person.

Screenshots
-----------

![terminal1](https://github.com/dstw/dotfiles/raw/master/screenshots/terminal1.png)
![terminal2](https://github.com/dstw/dotfiles/raw/master/screenshots/terminal2.png)
![terminal3](https://github.com/dstw/dotfiles/raw/master/screenshots/terminal3.png)

# dotfiles

My personal configuration for desktop/workstation. Contain some customized 
settings, includes:

* Zsh
* Tmux
* Vim
* Git
* Mutt
* Elinks
* Midnight Commander

Prerequisites
-------------

On Debian/Ubuntu system:

	sudo apt install zsh tmux vim mutt fetchmail procmail elinks mc git stow

Install [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh). A configuration
framework for your Zsh shell. It makes your shell more fancy.  
Install [base16-shell](https://github.com/chriskempson/base16-shell). Custom
shell colorscheme which allow you to have unified colors in all your command
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
	stow zsh
	stow tmux
	stow vim
	stow git
	stow mutt
	stow elinks
	stow mc

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
* .muttrc

Screenshots
-----------

![terminal1](https://github.com/dstw/dotfiles/raw/master/screenshots/terminal1.png)
![terminal2](https://github.com/dstw/dotfiles/raw/master/screenshots/terminal2.png)
![terminal3](https://github.com/dstw/dotfiles/raw/master/screenshots/terminal3.png)

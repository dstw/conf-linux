# dotfiles

My personal linux configuration for desktop/workstation. Contain some customized 
settings, includes:

* Vim
* Terminator
* Git
* Mutt

Prerequisites
-------------

* vim
* terminator
* git
* mutt

Recommended to install
----------------------

* vim-gtk

Usage
-----

	git clone git@github.com:dstw/dotfiles.git
	cd dotfiles/ 

### Vim

	cp -Rp .vi* ~/

### Terminator

	cp .config ~/

### Git
	
	cp .gitconfig ~/

### Mutt

	cp .muttrc ~/
	mkdir mail
	touch ~/mail/inbox
	source ~/.bashrc 

Don't forget to edit .gitconfig and .muttrc as they contain email
settings which unique among different person.

Screenshots
-----------

![terminal](https://github.com/dstw/conf-linux/raw/master/screenshots/terminal.png)

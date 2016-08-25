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
* fetchmail
* procmail

Recommended to install
----------------------

* vim-gtk

Usage
-----

	git clone git@github.com:dstw/dotfiles.git
	cd conf-linux

### Vim

	cp .vi* ~/

### Terminator

	cp .config ~/

### Git
	
	cp .gitconfig ~/

### Mutt

	cp .fetchmailrc .procmailrc .muttrc .forward ~/

Don't forget to edit .gitconfig, .fetchmailrc and .muttrc as they contain email
settings which absolutely unique among different person.

Screenshots
-----------

![terminal](https://github.com/dstw/conf-linux/raw/master/screenshots/terminal.png)

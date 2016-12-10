# dotfiles

My personal linux configuration for desktop/workstation. Contain some customized 
settings, includes:

* Vim
* Git
* Mutt
* Elinks

Prerequisites
-------------

* vim
* git
* mutt
* elinks

Usage
-----

	git clone --recursive git@github.com:dstw/dotfiles.git
	cd dotfiles/ 

### Vim

	cp -Rp .vim/ ~/

### Git
	
	cp .gitconfig ~/

### Mutt

	cp .muttrc ~/
	mkdir mail
	touch ~/mail/inbox

### Elinks

	cp -Rp .elinks/ ~/

Don't forget to edit .gitconfig and .muttrc as they contain email
settings which unique among different person.

Screenshots
-----------

![terminal](https://github.com/dstw/conf-linux/raw/master/screenshots/terminal.png)

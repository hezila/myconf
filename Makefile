build:
	brew install git tmux zsh
	brew brew install emacs --cocoa --use-git-head --HEAD
	brew linkapps
install:
	PWD=$(shell pwd)
	ln -svnf $(PWD)/emacs $(HOME)/.emacs
	ln -svnf $(PWD)/emacs.d $(HOME)/.emacs.d
	ln -svnf $(PWD)/tmux.conf $(HOME)/.tmux.conf
	ln -svnf $(PWD)/zshrc $(HOME)/.zshrc

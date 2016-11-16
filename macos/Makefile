build:
	brew install git tmux zsh
	brew brew install emacs --cocoa --use-git-head --HEAD
	brew linkapps
install:
	PWD=$(shell pwd)
	mkdir -p ~/Library/KeyBindings
	ln -svnf $(PWD)/DefaultKeyBinding.dict ~/Library/KeyBindings/DefaultKeyBinding.dict
	ln -svnf $(PWD)/emacs $(HOME)/.emacs
	ln -svnf $(PWD)/emacs.d $(HOME)/.emacs.d
	ln -svnf $(PWD)/tmux.conf $(HOME)/.tmux.conf
	ln -svnf $(PWD)/zshrc $(HOME)/.zshrc

build:
	sudo apt-get install git tmux zsh emacs
	wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
	sudo chsh -s `which zsh`

install:
	PWD=$(shell pwd)
	PAR_DIR=$(shell cd ../ && basename="$PWD")
	ln -svnf $(PAR_DIR)/linux/emacs $(HOME)/.emacs
	ln -svnf $(PAR_DIR)/linux/emacs.d $(HOME)/.emacs.d
	ln -svnf $(PAR_DIR)/linux/tmux.conf $(HOME)/.tmux.conf
	ln -svnf $(PWD)/zshrc $(HOME)/.zshrc

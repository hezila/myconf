build:
        sudo apt-get install git tmux zsh emacs
	wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
	chsh -s `which zsh`
install:
        PWD=$(shell pwd%/*)
        ln -svnf $(PWD)/emacs $(HOME)/.emacs
        ln -svnf $(PWD)/emacs.d $(HOME)/.emacs.d
        ln -svnf $(PWD)/tmux.conf $(HOME)/.tmux.conf
        ln -svnf $(PWD)/zshrc $(HOME)/.zshrc

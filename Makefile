macos_build:
	brew install git tmux zsh
	brew brew install emacs --cocoa --use-git-head --HEAD
	brew linkapps
macos_install:
	PWD=$(shell pwd)
	mkdir -p ~/Library/KeyBindings
	ln -svnf $(PWD)/DefaultKeyBinding.dict ~/Library/KeyBindings/DefaultKeyBinding.dict
	ln -svnf $(PWD)/emacs $(HOME)/.emacs
	ln -svnf $(PWD)/emacs.d $(HOME)/.emacs.d
	ln -svnf $(PWD)/tmux.conf $(HOME)/.tmux.conf
	ln -svnf $(PWD)/macos/zshrc $(HOME)/.zshrc

linux_build:
	sudo apt-get install git tmux zsh emacs
	wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
	sudo chsh -s `which zsh`

linux_install:
	PWD=$(shell pwd)
	ln -svnf $(PWD)/emacs $(HOME)/.emacs
	ln -svnf $(PWD)/emacs.d $(HOME)/.emacs.d
	ln -svnf $(PWD)/tmux.conf $(HOME)/.tmux.conf
	ln -svnf $(PWD)/linux/zshrc $(HOME)/.zshrc

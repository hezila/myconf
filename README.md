Dotfiles
========

These are dot-files and basic configs on my development machine (MacOS), feel free to take and do whatever you want.

## Requirements

### Mac Package Management

[HomeBrew](http://brew.sh/)

	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

""Brews""

	brew install git
	brew install htop wget
	brew install tmux zsh

[HomeBrew Cask](http://caskroom.io/)

	brew install caskroom/cask/brew-cask
	brew tap caskroom/versions

### Shell

I prefer [Oh my zsh](https://github.com/robbyrussell/oh-my-zsh)

  sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"


### Setup Config

- Checkout environment repository

	 git clone https://github.com/numb3r3/dotfiles.git

- Install [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)

  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

### Emacs Setup

>>> 世界上有三种人，一种使用 Emacs，一种使用 vi，另一种包括其他所有人。

    brew remove --force emacs
    brew brew install emacs --cocoa --use-git-head --HEAD
    brew linkapps

**Key Bindings**

OSX 拥有一部分 Emacs Binding: c-f, c-h, c-n ,c-b, 但是以 meta 键开头的 binding 不知道为啥变成了 œ∑†¥®øπåƒ√ 这些奇怪字符. 结果就变成了可以用 c-v 下翻一页, 但是却不能用 m-f 上翻一页, 让我十分纠结. 今天下决心找了一下如何在 OSX 下搞定完整的 Binding, 终于找到了 [superUser](http://superuser.com/questions/374799/emacs-like-meta-option-alt-key-functionality-in-os-x-lion) 上的这个答案.

    ./key_binding.sh


## License

MIT: [http://ryanwu.mit-license.org/](http://ryanwu.mit-license.org/)

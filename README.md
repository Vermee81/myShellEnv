# My shell environment
This is a repository to save my shell environment.


This configure refers to the following blog posts.

- [Mac標準のbashからzshに変えた時のメモ](https://qiita.com/akashima/items/bdcde778644086533ade)
- [zshでzの結果をpecoって爆速でディレクトリ移動する](https://qiita.com/maxmellon/items/23325c22581e9187639e)
- [Catalinaにzshをインストールする際のメモ](https://qiita.com/yshishido/items/f85902c6039f07d07d48)

Don't forget to install mandatory plugins and libraries.

Install and initialize Sheldon to manage zsh plugins.
```
brew install sheldon
sheldon init --shell zsh
```

Install zsh and many other tools.

```brew install zsh zsh-autosuggestions zsh-completions zsh-syntax-highlighting colordiff reattach-to-user-namespace tmux direnv```

Install z.sh

```git clone https://github.com/rupa/z.git ~/.zsh.d```

Install peco

```brew install peco```

Install zplug and plugins


Install pyenv, goenv, nodenv, node-build and tfenv

```
git clone git://github.com/yyuu/pyenv.git ~/.pyenv
git clone https://github.com/syndbg/goenv.git ~/.goenv
git clone git://github.com/nodenv/nodenv.git ~/.nodenv
git clone https://github.com/nodenv/node-build.git ~/.nodenv/plugins/node-build
git clone https://github.com/tfutils/tfenv.git ~/.tfenv
```

Install poetry

```
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python
```

Install rye

```
curl -sSf https://rye-up.com/get | bash
```

Install PHP Code Sniffer

```
brew install composer
composer global require "squizlabs/php_codesniffer=*"
```


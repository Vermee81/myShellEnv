# My shell environment
This is a repository to save my shell environment.


This configure refers to the following blog posts.

- [Mac標準のbashからzshに変えた時のメモ](https://qiita.com/akashima/items/bdcde778644086533ade)
- [zshでzの結果をpecoって爆速でディレクトリ移動する](https://qiita.com/maxmellon/items/23325c22581e9187639e)

Don't forget to install mandatory plugins and libraries.

Install zsh and many other tools.

```brew install zsh zsh-autosuggestions zsh-completions zsh-syntax-highlighting colordiff reattach-to-user-namespace tmux```

Install z.sh

```git clone https://github.com/rupa/z.git ~/.zsh.d```

Install peco

```brew install peco```

Install zplug and plugins

```
git clone https://github.com/zplug/zplug.git .zplug
zplug install
```

Install nodenv and node-build

```
git clone git://github.com/nodenv/nodenv.git ~/.nodenv
git clone https://github.com/nodenv/node-build.git ~/.nodenv/plugins/node-build
```

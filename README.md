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

```brew install colordiff tmux peco```

Install Rosetta2 for some libraries
```
sudo softwareupdate --install-rosetta --agree-to-license
```

Install nodebrew
```
curl -L git.io/nodebrew | perl - setup
```

Install pyenv and tfenv

```
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
git clone https://github.com/tfutils/tfenv.git ~/.tfenv
```

Install rye

```
curl -sSf https://rye.astral.sh/get | bash
```


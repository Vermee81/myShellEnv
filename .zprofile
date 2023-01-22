# 補完機能
autoload -U compinit
compinit

# prompt
PROMPT='%m:%c %n$ '

# keybind
bindkey \^U backward-kill-line

# コマンド履歴
HISTFILE=~/.zsh_history
HISTSIZE=6000000
SAVEHIST=6000000
setopt hist_ignore_dups     # ignore duplication command history list
setopt share_history        # share command history data

# コマンド履歴検索
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

# alias
alias diff="colordiff"

# for zsh
export PATH=/usr/local/bin:$PATH
setopt nonomatch # *で補完が実行されないようにする

# for golang
export GOPATH=$HOME/go
export PATH=$HOME/go/bin:$PATH
export GOENV_DISABLE_GOPATH=1 # go1.13からの運用

# for python
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# for pipenv
PIPENV_DEFAULT_PYTHON_VERSION='3.6.6'

# for ruby
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# for ghq
export PATH="$HOME/go/bin:$PATH"

# for percol
function percol-src () {
    local selected_dir=$(ghq list --full-path | percol --query "$LBUFFER")
    if [ -n "$selected_dir" ]; then
        BUFFER="cd ${selected_dir}"
        zle accept-line
    fi
    zle clear-screen
}
zle -N percol-src
bindkey '^S' percol-src

# for mitmproxy
MITMPROXY_SSLKEYLOGFILE="$HOME/.mitmproxy/sslkeylogfile.txt"

# for nodejs
export PATH=$PATH:$HOME/.nodebrew/current/bin

# for nodeenv
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

# for tfenv(Terraform env)
export PATH="$HOME/.tfenv/bin:$PATH"

# for .z
source $HOME/.zsh.d/z.sh

# for direnv
eval "$(direnv hook zsh)"

# for peco
function peco-z-search
{
  which peco z > /dev/null
  if [ $? -ne 0 ]; then
    echo "Please install peco and z"
    return 1
  fi
  local res=$(z | sort -rn | cut -c 12- | peco)
  if [ -n "$res" ]; then
    BUFFER+="cd $res"
    zle accept-line
  else
    return 1
  fi
}
zle -N peco-z-search
bindkey '^]' peco-z-search


export PATH="$HOME/.poetry/bin:$PATH"

# for composer
export PATH="$HOME/.composer/vendor/bin:$PATH"

# for flutter
export PATH="$HOME/flutter/bin:$PATH"


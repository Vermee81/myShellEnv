eval "$(/opt/homebrew/bin/brew shellenv)"

# for Sheldon which is a plugin manager for zsh
eval "$(sheldon source)"

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
setopt nonomatch # *で補完が実行されないようにする

# for golang
export GOPATH=$HOME/go
export PATH=$HOME/go/bin:$PATH

# for nodejs
export PATH=$PATH:$HOME/.nodebrew/current/bin

# for tfenv(Terraform env)
export PATH="$HOME/.tfenv/bin:$PATH"

# for .z
source $HOME/.zsh.d/z.sh

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

# for flutter
export PATH="$HOME/flutter/bin:$PATH"

# for google cloud
source '/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
source '/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'

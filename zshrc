## Mislav's zsh config
#
# Features: tab-completion, colors, Homebrew, rbenv, nifty prompt


# oh-my-zsh checkout (optional)
ZSH=$HOME/.oh-my-zsh

# use case-sensitive completion
# CASE_SENSITIVE="true"

# if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# load very few oh-my-zsh scripts
if [ -d $ZSH ]; then
  (){
  local config_file plugin

  for config_file (lib/completion lib/history lib/termsupport plugins/terminalapp/terminalapp.plugin); do
    source $ZSH/$config_file.zsh
  done

  for plugin (heroku gem bundler brew); do
    fpath=($ZSH/plugins/$plugin $fpath)
  done
  }
fi

fpath=(/usr/local/share/zsh-completions $fpath)

# Load and run compinit
autoload -U compinit
compinit -i

autoload colors; colors;
export LSCOLORS="Gxfxcxdxbxegedabagacad"
# setopt auto_cd
# setopt multios
# setopt cdablevarS
setopt prompt_subst

# Find the option for using colors in ls, depending on the version: Linux or BSD
ls --color -d . &>/dev/null 2>&1 && alias ls='ls --color=tty' || alias ls='ls -G'

export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;32'

for file in ~/.shrc/*.sh; do
  source "$file"
done

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

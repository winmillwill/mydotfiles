export ZSH="$HOME/.oh-my-zsh"
export ZSH_THEME="dogenpunk"
export DISABLE_AUTO_UPDATE="true"
export OH_MY_ZSH_DEBUG="true"
plugins=(command-coloring pip fabric lein redis-cli vagrant homebrew git vi-mode)

#test -f "$HOME/src/hgd/hd" && export OH_MY_ZSH_HG="$HOME/src/hgd/hd" || export OH_MY_ZSH_HG='hg'

source $ZSH/oh-my-zsh.sh
bindkey '^R' history-incremental-search-backward

# Custom options -------------------------------------------------------------
unsetopt promptcr

# Useful aliases -------------------------------------------------------------
alias j='z'
alias fab='fab -i ~/.ssh/id_rsa.pub'
alias oldgcc='export CC=/usr/bin/gcc-4.0'
alias tm='tmux -u2'
alias c='clear'
alias bp='bpython'

export DISABLE_AUTO_TITLE="true"

# Environment variables ------------------------------------------------------
export EDITOR='vim'
export PATH="$HOME/bin:${PATH}"
export PATH="$HOME/lib/dotfiles/bin:${PATH}"
export PATH="$HOME/bin:/usr/local/bin:/usr/local/sbin:/opt/local/bin:$PATH"
export GREP_OPTIONS='--color=auto'
export HISTSIZE=1000
export HISTFILESIZE=1000
export HISTCONTROL=erasedups
export COMMAND_MODE=unix2003
export RUBYOPT=rubygems

# Python variables -----------------------------------------------------------
# export PIP_DOWNLOAD_CACHE="$HOME/.pip/cache"
# export PYTHONSTARTUP="$HOME/.pythonrc.py"
# export WORKON_HOME="${HOME}/lib/virtualenvs"
# export PATH="${PATH}:/Developer/usr/bin/"
# export PATH="${PATH}:/usr/local/share/python/"
# export PATH="${PATH}:$HOME/.lein/bin"
# export PYTHONPATH="$PYTHONPATH:/usr/local/Cellar/python/2.7.2/lib/python2.7/site-packages"
# export PYTHONPATH="$PYTHONPATH:/usr/local/lib/python2.7.2/site-packages"
# export PYTHONPATH="$PYTHONPATH:/usr/local/lib/python2.7/site-packages"
# export PYTHONPATH="$PYTHONPATH:/usr/local/lib/python2.6/site-packages"
# export VEW_PATH="$HOME/lib/python/virtualenvwrapper/virtualenvwrapper.sh"
# export PYTHONPATH="$HOME/lib/python/see:$PYTHONPATH"
# export NODE_PATH="$NODE_PATH:/usr/local/lib/node:/usr/local/lib/node_modules"

# Mercurial variables --------------------------------------------------------
export PATH="$HOME/lib/hg/hg-stable:$PATH"
# export PYTHONPATH="$HOME/lib/hg/hg-stable:$PYTHONPATH"

# Extra ----------------------------------------------------------------------

# Local Settings -------------------------------------------------------------
if [[ -s $HOME/.zshrc_local ]] ; then source $HOME/.zshrc_local ; fi

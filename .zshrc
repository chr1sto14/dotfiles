export ZSH=/home/cmil/.oh-my-zsh

ZSH_THEME="kolo"

plugins=(mercurial archlinux z)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='mvim'
 fi

# aliases
alias l="exa --long --header --git"
alias skim="sk --ansi -i -c 'rg --sortr path --color=always --line-number \"{}\"'"

export PATH=~/bin:$PATH
export PATH=~/bin/iReport-5.6.0/bin:$PATH
export PATH=~/.local/bin:$PATH
export PATH=~/bin/gradle-2.2.1/bin:$PATH
export PATH=~/bin/fast-export:$PATH

export CQLSH_NO_BUNDLED=true
export VISUAL="vim"
export GOPRIVATE="github.com/selectlabsoft"
export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpg-connect-agent updatestartuptty /bye > /dev/null
gpgconf --launch gpg-agent

# . /usr/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
stty -ixon

# plugins
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=1"
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Path to your oh-my-zsh installation.
export ZSH=/Users/kumarng/.oh-my-zsh

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"

# Source antigen 
source ~/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle git-extras
antigen bundle git-flow
antigen bundle history
antigen bundle common-aliases
antigen bundle command-not-found
antigen bundle rsync
antigen bundle kennethreitz/autoenv
antigen bundle brew
antigen	bundle osx
antigen bundle web-search
antigen bundle pip

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# ZSH port of Fish shell's history search feature.
antigen bundle zsh-users/zsh-history-substring-search

# bind UP and DOWN arrow keys
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# Load the theme.
# antigen theme candy
antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train

# # Tell antigen that you're done.
antigen apply

# Automatically list directory contents on `cd`.
auto-ls () { ls -lrth; }
chpwd_functions=( auto-ls $chpwd_functions )

# Archey
archey -c

# Colorize cat 
alias cat="pygmentize -g"

# Autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh


test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh

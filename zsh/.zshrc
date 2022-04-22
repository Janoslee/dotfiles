source "$XDG_CONFIG_HOME/zsh/aliases"
fpath=($ZDOTDIR/external $fpath)

setopt AUTO_PARAM_SLASH
unsetopt CASE_GLOB

autoload -Uz compinit; compinit
autoload -Uz prompt_purification_setup; prompt_purification_setup

# Autocomplete hidden files
_comp_options+=(globdots)
source ~/PersonalProjects/dotfiles/zsh/external/completion.zsh

# Push the current directory visited on to the stack.
setopt AUTO_PUSHD

# Do not store duplucate directories in the stack
setopt PUSHD_IGNORE_DUPS

# Do not print the directory stack after using pushd or popd
setopt PUSHD_SILENT

# Carregar Xinit por causa do rxvt
source ~/.xinitrc

# allow VI mode
bindkey -v
export KEYTIMEOUT=1

# Change curso
autoload -Uz cursor_mode && cursor_mode

# Even more Vim taste, set up keys "hjkl" to navigate
zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# Allow editiing with NEOVIM
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

source ~/PersonalProjects/dotfiles/zsh/external/bd.zsh

if [ $(command -v "fzf") ]; then
        #source /usr/share/fzf/completion.zsh
        source /usr/share/fzf/shell/key-bindings.zsh
fi


# should be always the last
source /usr/share/zsh-syntax-highlighting 

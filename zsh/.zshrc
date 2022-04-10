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

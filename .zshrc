# History in cache directory:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.cache/zsh/history
# auto comp
autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)
# My minimal prompt
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '@ [%b]'
setopt PROMPT_SUBST
RPROMPT=\$vcs_info_msg_0_
PROMPT="%F{blue}[u:%n]%F{green}%~%F{reset}> "
# word moving zsh
bindkey ';5C' forward-word
bindkey ';5D' backward-word
# emacs bindkey
bindkey -e
# jump with ctrl+arrow
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
# hist
HISTFILE=$HOME/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory

source $HOME/.zsh_autostart
source $HOME/.zsh_aliases

# plugins
# Auto suggestion
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh


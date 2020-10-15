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
PROMPT="%F{blue}%~%F{green}>%F{White} "

# word moving zsh
bindkey ';5C' forward-word
bindkey ';5D' backward-word

# emacs bindkey
bindkey -e

function condaInit(){
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/run/media/asiam/MyProjects/ML/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/run/media/asiam/MyProjects/ML/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/run/media/asiam/MyProjects/ML/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/run/media/asiam/MyProjects/ML/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
}

alias jn="condaInit && jupyter notebook"
alias si="sudo pacman -S"
alias sup="sudo pacman -Syu"
alias gfp="cd /run/media/$USER/MyProjects/flask_setup"
alias ss="pacman -Ss"
alias t="$TERMINAL -e sh -c 'zsh' &"
alias gmm="cd /run/media/$USER/MyFiles/Music"
alias yi="yay -S"
alias gmp="cd /run/media/$USER/MyProjects"
alias srm="sudo pacman -Runs"
alias grb="cd /home/asiam/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/share/doc/rust/html/book"


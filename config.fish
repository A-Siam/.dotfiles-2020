set fish_greeting

set -x CM_DEBUG 1
set -x CM_MAX_CLIPS 100
set -x CM_HISTLENGTH 20
set -x CM_SELECTIONS "clipboard primary"

set -x BROWSER firefox
# set -x TERMINAL alacritty
set -x TERMINAL urxvt
set -x TERM xterm-256color
set -x FILEEXP ranger
set -x EDITOR vim

# aliases
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
alias gmf="cd /run/media/asiam/MyFiles"
alias gmc="cd /run/media/asiam"
alias p="python"

# oracle xe env vars
set -x ORACLE_HOME /opt/oracle/product/18c/dbhomeXE
set -x ORACLE_SID XE
set -x PATH $PATH:$ORACLE_HOME/bin

# tasks 
echo "don't forget to migrate with dev-db-connection whenever it changes"


function conda_init;
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /run/media/asiam/MyProjects/ML/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<;
end

# add normal python binaries to our path
set PATH /home/asiam/.local/bin $PATH
fish_vi_key_bindings

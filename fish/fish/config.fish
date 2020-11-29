set fish_greeting

set -x CM_DEBUG 1
set -x CM_MAX_CLIPS 100
set -x CM_HISTLENGTH 20
set -x CM_SELECTIONS "clipboard primary"
set -x WINEPREFIX ~/win32

set -x BROWSER chrome
set -x TERMINAL alacritty
set -x TERM xterm-256color
set -x FILEEXP ranger
set -x EDITOR vim

set -x SQLPLUS_BIN (which sqlplus)
# aliases
alias gof="cd ~/win32/drive_c/Program\ Files/Microsoft\ Office/Office12/"
alias word="cd ~/win32/drive_c/Program\ Files/Microsoft\ Office/Office12/ && wine WINWORD.EXE"
alias powerpoint="cd ~/win32/drive_c/Program\ Files/Microsoft\ Office/Office12/ && wine POWERPNT.EXE"
alias jn="condaInit && jupyter notebook"
alias si="sudo pacman -S"
alias sup="sudo pacman -Syu"
alias gfp="cd /run/media/$USER/MyProjects/flask_setup"
alias ss="pacman -Ss"
alias t="$TERMINAL -e sh -c 'fish' &"
alias gmm="cd /run/media/$USER/MyFiles/Music"
alias gma="cd /run/media/$USER/MyFiles/CSE_Acad"
alias gms="cd /run/media/$USER/MyFiles/CSE_selfstudy"
alias yi="yay -S"
alias gmp="cd /run/media/$USER/MyProjects"
alias srm="sudo pacman -Runs"
alias grb="cd /home/asiam/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/share/doc/rust/html/book"
alias gmf="cd /run/media/asiam/MyFiles"
alias gmc="cd /run/media/asiam"
alias p="python"
alias gss="cd /run/media/asiam/MyProjects/Server-side"
alias gmfsnd="cd /run/media/asiam/MyProjects/_MyFSND"
alias ss="sudo su"
alias ll="ls -l"
alias jn="conda_init && jupyter notebook"
alias cr="cd /run/media/asiam/MyFiles/conf/"
alias sf="~/.scripts/sf"
alias ga="git add -A"
alias gc="git commit"
alias gp="git push"
alias pys="python -m http.server"
alias gpp="cd ~/programming_playground"
alias v="vim"

# oracle xe env vars
set -x ORACLE_HOME /opt/oracle/product/18c/dbhomeXE
set -x ORACLE_SID XE
set -x PATH $PATH:$ORACLE_HOME/bin:$HOME/bin

function conda_init;
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /run/media/asiam/MyProjects/ML/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<;
end

# add normal python binaries to our path
set PATH /home/asiam/.local/bin $PATH
fish_vi_key_bindings

echo "-------------------------TODO------------------------"
echo "#ALGO TODO LIST"
echo "[ ] make a unified interface for all algorithms"
echo "[ ] make a presentation"
echo "-----------------------------------------------------"

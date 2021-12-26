#
# ~/.bashrc
#

#EXPORT
export TERM="xterm-256color"
export EDITOR="nvim"


# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# ALIAS 
alias ls='exa --color=always --group-directories-first'
alias la='exa -al --color=always --group-directories-first'
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'
alias update='sudo pacman -Syu'
alias bb='curl eur.rate.sx'
alias rm="rm -i"
alias cp="rsync -r --progress"
alias vim="nvim"

PS1='[\u@\h \W]\$ '

#custom functions
function countdown(){
   date1=$((`date +%s` + $1)); 
   while [ "$date1" -ge `date +%s` ]; do 
     echo -ne "$(date -u --date @$(($date1 - `date +%s`)) +%H:%M:%S)\r";
     sleep 0.1
   done
}
function stopwatch(){
  date1=`date +%s`; 
   while true; do 
    echo -ne "$(date -u --date @$((`date +%s` - $date1)) +%H:%M:%S)\r"; 
    sleep 0.1
   done
}

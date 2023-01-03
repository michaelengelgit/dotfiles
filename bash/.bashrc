#
# ~/.bashrc
#

#EXPORT
export TERM="xterm-256color"
export EDITOR="nvim"


# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# ALIAS 
alias ls='lsd'
alias la='lsd -la'
alias cleanup='doas pacman -Rns $(pacman -Qtdq) && doas yay -Rns $(yay -Qtdq)'

alias update='doas pacman -Syu && yay -Syu'
alias bb='curl eur.rate.sx'
alias rm="rm -i"
alias cp="rsync -r --progress"
alias vim="nvim"
#alias sudo="doas"
#GPG BS
alias gpg="gpg --pinentry-mode loopback"
alias gpg2="gpg2 --pinentry-mode loopback"


alias tp="doas multitor --init 10 --user michael --socks-port 9000 --control-port 9900 --proxy privoxy --haproxy"
alias sp="doas multitor --kill --socks-port all" 

alias wi="curl http://ipinfo.io/ip"
alias pi="proxychains curl http://ipinfo.io/ip"
alias le="sudo cryptsetup luksErase -q /dev/nvme0n1p2 && sudo poweroff"

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

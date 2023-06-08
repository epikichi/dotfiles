#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

alias copis='xclip -selection c'
PS1='[\u@\h \W]\$ '

export PATH="$PATH:$HOME/.local/bin/:$HOME/go/bin:$HOME/node_modules/.bin:$HOME/.yarn/bin:$HOME/gradle/bin:${KREW_ROOT:-$HOME/.krew}/bin"
export EDITOR=nvim
export GPG_TTY=$(tty)
export LS_COLORS='di=1;37:ex=0;90:or=1;31:ln=1;37'
export BROWSER="chrome.exe --profile-directory=Default $@"

source <(kubectl completion bash)
source <(auth0 completion bash)
eval "$(gh completion -s bash)"
complete -C '/usr/local/bin/aws_completer' aws
complete -C '/usr/bin/terraform' terraform

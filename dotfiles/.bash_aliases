alias dotfiles-install='bash ~/dotfiles/install.sh'

# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

if [ -x /usr/bin/dircolors ]; then
    alias ls='ls --color=auto'
    alias ll='ls -l --color=auto'
    alias la='ls -A --color=auto'
    alias l='ls -CF --color=auto'
    
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
    
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
    
    alias diff='diff --color'
    alias dmesg='dmesg --color'
else
    alias ll='ls -l'
    alias la='ls -A'
    alias l='ls -CF'
fi

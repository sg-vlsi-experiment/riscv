alias clean='echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo "" ; echo ""; clear'

#OLD set prompt='[%m:%n:%h] %/ >'
set prompt='%B%{\033[34m%}[%n@%m] [%h] [%d %D.%w.%Y %P]%{\033[0m%} %{\033[32m%}%/%{\033[0m%} >'

#alias precmd 'set prompt="`/usr/local/bin/powerline-shell --shell tcsh $?`\n~$ "'
alias precmd='set prompt="`~/.local/bin/powerline-shell --shell tcsh $?`\n~$ "'
### ALIAS:
## Commandes
alias a='alias'
alias h='history'
alias c='clear'
alias so='source'
alias md='mkdir'
alias duh='du -h --max-depth=1 | sort -h'
alias zombi='ps -auxw | grep defunct | wc'
alias who_matlab='echo "**** Show Process ****"; ps -aux | grep matlab; echo "**** Show Users ****"; w | grep matlab'
alias df_local='df --type xfs -h'
alias ls='ls --color'
alias la='ls -alh --color'
alias lt='ls -rtlh --color'
alias l='la -X'
alias ll='ls -lh --color --group-directories-first'
alias llm="la --color | more"
alias lls="ls -F --color"
alias cll='c ; ll'
alias cdl='cd \!*; ll'
alias xx='exit'
alias ShowDirStat='du -sk * | sort -nr'  # disk usage of all subdirectories sorted by reverse filesize
alias dzip='gunzip \!*.tar.gz ; tar xvf \!*.tar'
alias tree='tree -A'
alias md5sum_recursive='md5sum `find -type f | grep -v svn`'
alias ssh='ssh -YC4'
alias vncviewer='vncviewer -Shared'
alias chmod_read_all='find  -type d -exec chmod ugo+rx {} + ; find -type f -exec chmod ugo+r {} +'
alias grep="grep --color"
alias h20="history | tail -20"
alias ice="icc2_shell -64bit -gui -f rm_setup/icc2_pnr_setup.tcl"
alias k9="kill -9 \!*"
alias ld="ls -l | grep "^d""
alias listVNC="ps -aux | grep vnc | grep -v -e defunct -e grep -e Warning| grep $user"
alias n="nedit"
alias psme="ps -aux | grep $user"
alias sysmon="gnome-system-monitor &"
alias v="vim"
alias vtabs="vim -p "
alias g="gvim"
alias pdf="evince $1 &"
alias lo="libreoffice $1 &"

alias cd1='cd ../'
alias cd2='cd ../../'
alias cd3='cd ../../../'
alias cd4='cd ../../../../'
alias cd5='cd ../../../../../'
alias cd6='cd ../../../../../../'
alias cd7='cd ../../../../../../../'
alias cd8='cd ../../../../../../../../'

# Tree
alias t1='tree -L 1'
alias t2='tree -L 2'
alias t3='tree -L 3'
alias t4='tree -L 4'
alias t5='tree -L 5'
alias t6='tree -L 6'
alias t7='tree -L 7'
alias t8='tree -L 8'

# Git
alias gl='git log --graph --pretty=format:"%C(auto)%h %Creset%C(cyan)%C(bold)%ad%Creset %C(yellow)%cn%Creset %C(magenta)|%Creset%C(auto)%d%Creset -- %s" --date=short'
alias gpl='git pull'
alias gph='git push'
alias gf='git fetch'
alias gm='git merge'
alias gr='git rebase'
alias gco='git checkout'
alias gb='git branch'
alias gcb='git checkout -b'
alias gd='git diff'
alias gds='git diff --stat'
alias gs='git status'
alias ga='git add'

alias rgs='repo forall -c "git status -s"'
alias rgf='repo forall -c "git fetch origin dev"'
alias rgr='repo forall -c "git rebase origin/dev"'

#Terminal
alias gt='gnome-terminal'
alias tt='terminator'
alias xt='xfce4-terminal'                           


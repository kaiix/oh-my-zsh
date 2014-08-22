alias sz='source ~/.zshrc'

# system
alias ls='ls -aFG --color=auto'
alias ll='ls -l'
alias rm='rm -i'
alias mv='mv -iv'
alias ..='cd ..'
alias ...='cd ../..'
alias df='df -h'
alias du='du -h -c'
alias mkdir='mkdir -p -v'
alias cddl='cd ~/Downloads/'
alias less='less -R'
alias ack='ack --pager=less'

alias vihosts='sudo vim /etc/hosts'
alias rmattr="xattr -r -d com.apple.quarantine"
alias flushdns="dscacheutil -flushcache;sudo killall -HUP mDNSResponder"

#alias runserver='python manage.py runserver'

# mongodb
alias rmlock='rm /usr/local/var/mongodb/mongod.lock && mongodb-start'

# python
alias doctest='python -m doctest -v'

# django
alias dbshell='python manage.py dbshell'
alias djshell='python manage.py shell'

# suffix aliases
alias -s log="less -MN"

runserver ()
{
    if [ $1 ]; then
        echo en0 ip address is `ifconfig en0|grep "inet\ "|awk '{print $2}'`;
    fi;
    python manage.py runserver $1;
}


# svn
alias svnst='svn st'
#export export LESS='-x4FRSXs'
alias svndiff='svn diff |less -x4FRSXs'

svnaddx()
{
    svn st|grep '^?'|awk '{print $2}'|xargs -I{} svn add {}@
}

# misc
drop ()
{
    cp -R $1 ~/Dropbox/$2;
    echo "copy $1 -> Dropbox/$2";
}


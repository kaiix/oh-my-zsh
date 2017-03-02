alias sz='source ~/.zshrc'

# system
alias ls='ls -AFG'
alias ll='ls -l'
alias df='df -h'
alias du='du -h -c'
alias mkdir='mkdir -p -v'
alias less='less -R'
alias ack='ag'

alias vihosts='sudo vim /etc/hosts'
alias vissh='vim ~/.ssh/config'
alias vivi='vim ~/.vimrc'
alias rmattr="xattr -r -d com.apple.quarantine"

# python
alias doctest='python -m doctest -v'

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

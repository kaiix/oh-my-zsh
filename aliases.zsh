alias sz='source ~/.zshrc'

# system
alias ls='ls -AFG'
alias ll='ls -l'
alias df='df -h'
alias du='du -h -c'
alias mkdir='mkdir -p -v'
alias less='less -R'
alias ag='ag --pager=less --path-to-ignore ~/.ignore'
alias ack="ag"

alias vi='vim'
alias vihosts='sudo vim /etc/hosts'
alias vissh='vim ~/.ssh/config'
alias virc='vim ~/.vimrc'
alias rmattr="xattr -r -d com.apple.quarantine"
alias pr="hub pull-request -o -b"
alias mkvenv='python3 -m venv --prompt $(basename $PWD) venv'
alias help='tldr'
alias du='ncdu --color dark -rr -x --exclude .git --exclude node_modules'
alias ping='prettyping --nolegend'
alias nv='nvim'

# suffix aliases
alias -s log="less -MN"

# misc
drop ()
{
    cp -R $1 ~/Dropbox/$2;
    echo "copy $1 -> Dropbox/$2";
}

alias sz='source ~/.zshrc'

# system
alias ls='exa -aF'
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
alias vialias="vim $HOME/.oh-my-zsh/aliases.zsh"
alias rmattr="xattr -r -d com.apple.quarantine"
alias pr="hub pull-request -o -b"
alias mr="lab mr create"
alias mkvenv='python3 -m venv --prompt $(basename $PWD) venv'
alias help='tldr'
alias du='ncdu --color dark -rr -x --exclude .git --exclude node_modules'
alias nv='nvim'
alias jupyterd="docker run --rm -p 9000:8888 -v $HOME/notebook:/home/jovyan jupyter/scipy-notebook:latest"
alias ping='prettyping --nolegend'

# suffix aliases
alias -s log="less -MN"

# misc
drop ()
{
    cp -R $1 ~/Dropbox/$2;
    echo "copy $1 -> Dropbox/$2";
}

dragon()
{
    pip3 install --user -U flake8 autoflake isort black
}

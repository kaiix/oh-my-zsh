cdpath=(. ~/projects/)

# Misc
if [ `uname` = "Darwin" ]
then
    . `brew --prefix`/etc/profile.d/z.sh
fi

# iTerm2
case $TERM in
    *xterm*|ansi)
        function settab { print -Pn "\e]1;${PWD##*/}\a" }
        function settitle { print -Pn "\e]2;${PWD##*/}\a" }
        function chpwd { settab;settitle }
        settab;settitle
        ;;
esac

alias ack='ack --pager=less'

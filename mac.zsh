cdpath=(. ~/projects/)

# iTerm2
case $TERM in
    *xterm*|ansi)
        function settab { print -Pn "\e]1;${PWD##*/}\a" }
        function settitle { print -Pn "\e]2;${PWD##*/}\a" }
        function chpwd { settab;settitle }
        settab;settitle
        ;;
esac

cdpath=(. ~/projects/)

# Misc
if [ `uname` = "Darwin" ]
then
    . `brew --prefix`/etc/profile.d/z.sh
fi

# Android
export SDK_ROOT=~/Developer/android-sdk-macosx
export NDK_ROOT=~/Developer/android-ndk-r9d

PATH=$PATH:~/Developer/depot_tools

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# iTerm2
case $TERM in
    *xterm*|ansi)
        function settab { print -Pn "\e]1;${PWD##*/}\a" }
        function settitle { print -Pn "\e]2;${PWD##*/}\a" }
        function chpwd { settab;settitle }
        settab;settitle
        ;;
esac

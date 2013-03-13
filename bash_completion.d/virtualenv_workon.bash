# virtualenv workon
#---------------------------
workon ()
{
    local venv="/Users/kaiix/.venvs/";
    local proj="/Users/kaiix/projects/";
    local codes="/Users/kaiix/codes/";

    if [ -d $venv$1 ]; then
        if [ -d $proj$1 ]; then
            source $venv$1/bin/activate;
        elif [ -d $codes$1 ]; then
            source $venv$1/bin/activate;
        else
            source $venv$1/bin/activate;
        fi
    else
        echo "ERROR $1:";
        echo $venv$1"bin/activate";
    fi
}

_workon()
{
    local cur prev opts;
    cur="${COMP_WORDS[COMP_CWORD]}";
    prev="${COMP_WORDS[COMP_CWORD-1]}";

    COMPREPLY=( $(compgen -W "$(ls -f1t ~/.venvs|sed -e 's/[./@]//g' -e '/^$/d')" -- ${cur}) );
}

complete -o nospace -F _workon workon

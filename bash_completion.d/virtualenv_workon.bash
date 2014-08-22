VENV_HOME=~/.venv

# virtualenv workon
#---------------------------
workon ()
{
    echo $1
    local venv=${VENV_HOME};

    if [ -d $venv/$1 ]; then
        source $venv/$1/bin/activate;
    else
        echo "ERROR $1:";
        echo $venv/$1/bin/activate;
    fi
}

_workon()
{
    local cur prev opts;
    cur="${COMP_WORDS[COMP_CWORD]}";
    prev="${COMP_WORDS[COMP_CWORD-1]}";

    COMPREPLY=( $(compgen -W "$(ls -f1t ${VENV_HOME}|sed -e 's/[./@]//g' -e '/^$/d')" -- ${cur}) );
}

complete -o nospace -F _workon workon

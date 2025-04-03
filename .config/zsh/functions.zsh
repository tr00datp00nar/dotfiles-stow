f() {
    if [ $# -eq 0 ]
    then
        fzf --height 50% | sort
        return 0
    fi

    # Store the program
    program="$1"

    # Remove first argument off the list
    shift

    # Check which program was selected and perform actions
    # Program == cd
    if [[ "$program" =~ ^(cd)$ ]]; then
        dir="$(find ${1:-.} -type d 2> /dev/null | fzf --height 50% +m)" && cd $dir
    # Program == $EDITOR
    elif [[ "$program" =~ ^(v|vim|nvim)$ ]]; then
        file="$(find ${1:-.} -type f 2> /dev/null | fzf --height 50% -m)" && $EDITOR $file
    # Program == kill
    elif [[ "$program" =~ ^(kill)$ ]]; then
        if [ "$UID" != "0" ]; then
            pid=$(ps -f -u $UID | sed 1d | fzf --height 50% -m | awk '{print $2}')
        else
            pid=$(ps -ef | sed 1d | fzf --height 50% -m | awk '{print $2}')
        fi

        if [ "x$pid" != "x" ]
        then
            echo $pid | xargs kill -${1:-9}
        fi
    elif [[ "$program" =~ ^(h|help)$ ]]; then
        usage_f_func
    else
        return 1
    fi
}

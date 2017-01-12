# These functions should go into your bashrc (or bash_profile).


# list directory where process was launched
whichdir () {
    lsof -p "$*" | grep cwd | awk '{print $NF}'
}


# change into a directory where a specific process was launched
cdpsid () {
    cd `whichdir $1`
}

# Make a directory and move into that directory. This is best placed in your 
# bashrc (or similar). 

mkcd () {
    mkdir -p "$*"
    cd "$*"
}


#
# Function tools
#

# Output utilities
out() { print $@; }
warn() { print "$fg[yellow]WARNING:$reset_color" $@ >&2 }
error() { print "$fg[red]ERROR:$reset_color" $@ >&2 }

# Tar tools
tarc() { tar czvf $1.tar.gz $1; }
tarx() { tar xzvf $1; }
tart() { tar tzvf $1; }

# History
hgrep() { history | grep --color=auto "$1" }

# mkdir and cd into
mkcd() { mkdir $1 && cd $1 }

# Project related
pls() {
    local i=1
    for d in $(find $PROJECT_DIR -mindepth 1 -maxdepth 1 -type d -exec basename {} \;); do
        echo $i - $d
        i=$(($i + 1))
    done
}
pn() {
    local pdirs=($(find $PROJECT_DIR -mindepth 1 -maxdepth 1 -type d -exec basename {} \;))
    [ ${#pdirs} -ge $1 ] && [[ -d $PROJECT_DIR/${pdirs[$1]} ]] && cd $PROJECT_DIR/${pdirs[$1]}
}
pd() {
    [[ -d $PROJECT_DIR/$1 ]] && cd $PROJECT_DIR/$1
}
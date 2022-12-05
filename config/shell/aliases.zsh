#
# zsh-specific aliases
#

## Suffix aliases
# Text files
alias -s txt=$EDITOR
alias -s md=$EDITOR
alias -s vim=$EDITOR
alias -s log=$EDITOR

# Structure files
alias -s yml=$EDITOR
alias -s yaml=$EDITOR
alias -s toml=$EDITOR
alias -s json=$EDITOR
alias -s csv=$EDITOR

# Web page
alias -s html=$EDITOR
alias -s css=$EDITOR
alias -s sass=$EDITOR
alias -s scss=$EDITOR
alias -s js=$EDITOR
alias -s jsx=$EDITOR
alias -s ts=$EDITOR
alias -s tsx=$EDITOR

# C/C++
alias -s c=$EDITOR
alias -s cpp=$EDITOR
alias -s h=$EDITOR
alias -s hpp=$EDITOR

# Python
alias -s py=$EDITOR

# Java
alias -s java=$EDITOR

# Compressed
alias -s gz='tar xzvf'

## Pipes
alias -g C='| cat'
alias -g H='| head'
alias -g L='| wc -l'
alias -g P='| $PAGER'
alias -g S='| sort -n'
alias -g T='| tail'
alias -g U='| uniq'
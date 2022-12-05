#
# Custom aliases
#

alias c='cat'
alias e='echo'
alias j='jobs'
alias l.='ls -ABFGdl .*'
alias la='ls -ABFGa'
alias ll='ls -ABFGl'
alias lh='ls -ABFGhl'
alias lt='ls -ABFGlt'
alias ltc='ls -ABFGl --time=ctime'
alias lta='ls -ABFGl --time=atime'
alias ltm='ls -ABFGl --time=mtime'
# p leaved for project related commands
alias q='exit'
alias se='sed -En'
alias t='tree -C --charset utf8'
alias td='t -d'

# Pipes
alias -g C='| cat'
alias -g H='| head'
alias -g L='| wc -l'
alias -g P='| $PAGER'
alias -g S='| sort -n'
alias -g T='| tail'
alias -g U='| uniq'

# dotfile realted
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
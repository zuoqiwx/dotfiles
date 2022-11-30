# Enable autocompletion
autoload -Uz compinit && compinit

# Load VCS infomation
autoload -Uz vcs_info
zstyle ':vcs_info:git:*' formats ' %F{green}%b%f'
function precmd() {
	vcs_info
}
setopt prompt_subst

# string-length [TEXT]
# Output expanded string length to stdout
function string-length() {
	emulate -L zsh
	local -i COLUMNS=${2:-COLUMNS}
	local -i x y=${#1} m
	if (( y )); then
		while (( ${${(%):-$1%$y(l.1.0)}[-1]} )); do
			x=y
			(( y *= 2 ))
		done
		while (( y > x + 1 )); do
			(( m = x + (y - x) / 2 ))
			(( ${${(%):-$1%$m(l.x.y)}[-1]} = m ))
		done
	fi
	echo $x
}

# fill-line [TOP-LEFT] [TOP-RIGHT]
# Output a whole width line with both given prompts and middle filling characters
# Reference: https://gist.github.com/romkatv/2a107ef9314f0d5f76563725b42f7cab
function fill-line() {
	local left_len=$(string-length $1)
	local right_len=$(string-length $2)
	local pad_len=$((COLUMNS - left_len - right_len - 3))
	if [ $pad_len -lt 0 ]; then
		echo "${1}"
	else
		local pad=${(pl.$pad_len..\U2500.)}
		echo "${1} %F{240}${pad}%f ${2}"
	fi
}

# set-prompt
# Configure PROMPT variable
function set-prompt() {
	local arrow=$'\U2771'
	local top_left='%F{069}%~%f'"${vcs_info_msg_0_}"
	local top_right='%F{220}%*%f'
	local bottom_left='%(?.%F{green}'"${arrow}"'.%F{196}%? '"${arrow}"')%f '
	PROMPT="$(fill-line "$top_left" "$top_right")"$'\n'$bottom_left
}

# Invoke prompt function before each line
autoload -Uz add-zsh-hook
add-zsh-hook precmd set-prompt

alias ll='ls -laG'
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

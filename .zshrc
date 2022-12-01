# Main zsh source

config_dir=~/config/shell
configs=(
	env.sh
	option.zsh
	alias.sh
	alias.zsh
	function.sh
	prompt.zsh
)
for config in $configs; do
	[[ -f $config_dir/$config ]] && . $config_dir/$config
done
unset config
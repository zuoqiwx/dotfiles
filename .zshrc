# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Load all configurations
USER_SHELL_CONF=~/config/shell
configs=(
    envs.sh
    options.zsh
    aliases.sh
    aliases.zsh
    functions.sh
    styles.zsh
)
for config in $configs; do
    [[ -f $USER_SHELL_CONF/$config ]] && . $USER_SHELL_CONF/$config
done
unset configs config
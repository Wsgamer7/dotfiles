export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="af-magic"
zstyle ':omz:update' mode disabled

source $ZSH/oh-my-zsh.sh

for dotfile in ~/dotfiles/.{env,functions,alias}
do
	[ -r "$dotfile" ] && source "$dotfile"
done
#use vim keybind in zsh
bindkey -v


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/ws/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/ws/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/ws/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/ws/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


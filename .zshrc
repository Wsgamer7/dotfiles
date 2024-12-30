#zsh
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="af-magic"
zstyle ':omz:update' mode disabled
source $ZSH/oh-my-zsh.sh

# source dotfiles
for dotfile in $HOME/dotfiles/.{env,functions,alias}
do
	[ -r "$dotfile" ] && source "$dotfile"
done
# use vim keybind in zsh
bindkey -v

# path
PATH=$PATH:$HOME/.local/bin
PATH=$PATH:/usr/local/go/bin:$HOME/go/bin
PATH=$PATH:$HOME/.cargo/bin
PATH=$PATH:/opt/homebrew/bin
PATH=$PATH:$HOME/flutter/bin
PATH=$PATH:$HOME/.gem/bin
PATH=$PATH:/opt/homebrew/opt/ruby/bin

export HOMEBREW_NO_AUTO_UPDATE=1
export ALIYUNPAN_CONFIG_DIR=$HOME/.config/aliyunpan
export DENO_INSTALL="$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

#配置proxy、submod
export GOPRIVATE=github.com/SYNR-AI/*
go env -w GOPROXY="https://goproxy.cn,direct"
# go env -w GOPRIVATE="*.everphoto.cn,github.com/SYNR-AI/*"
go env -w GOSUMDB="sum.golang.google.cn"

# fasd
eval "$(fasd --init auto)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup


# <<< conda initialize <<<

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
 eval "$(pyenv init -)"
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[[ -f /Users/wangshuo/Library/Caches/pnpm/dlx/g4eumsy4pdkcpeekcc54bzeccq/19256c964fa-6cc6/node_modules/.pnpm/tabtab@2.2.2/node_modules/tabtab/.completions/electron-forge.zsh ]] && . /Users/wangshuo/Library/Caches/pnpm/dlx/g4eumsy4pdkcpeekcc54bzeccq/19256c964fa-6cc6/node_modules/.pnpm/tabtab@2.2.2/node_modules/tabtab/.completions/electron-forge.zsh           vv  


# bun completions
[ -s "/Users/wangshuo/.bun/_bun" ] && source "/Users/wangshuo/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

[ -f "/Users/wangshuo/.ghcup/env" ] && . "/Users/wangshuo/.ghcup/env" # ghcup-env
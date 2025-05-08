#zsh
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="af-magic"
zstyle ':omz:update' mode disabled
source $ZSH/oh-my-zsh.sh

# source dotfiles
for dotfile in $HOME/dotfiles/.{functions,alias}
do
	[ -r "$dotfile" ] && source "$dotfile"
done
# use vim keybind in zsh
bindkey -v

# path
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin
export PATH=$PATH:$HOME/.cargo/bin
export PATH=$PATH:$HOME/.gem/bin
export PATH=$PATH:/opt/homebrew/opt/ruby/bin
export PATH=$PATH:/opt/homebrew/opt/postgresql@16/bin
export PATH=$PATH:/opt/homebrew/bin

export UV_DEFAULT_INDEX="https://mirrors.tuna.tsinghua.edu.cn/pypi/web/simple"

# disable homebrew auto update
export HOMEBREW_NO_AUTO_UPDATE=1

#配置proxy、submod
export GOPRIVATE=github.com/SYNR-AI/*
go env -w GOPROXY="https://goproxy.cn,direct"
# go env -w GOPRIVATE="*.everphoto.cn,github.com/SYNR-AI/*"
go env -w GOSUMDB="sum.golang.google.cn"

# fasd
eval "$(fasd --init auto)"

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[[ -f /Users/wangshuo/Library/Caches/pnpm/dlx/g4eumsy4pdkcpeekcc54bzeccq/19256c964fa-6cc6/node_modules/.pnpm/tabtab@2.2.2/node_modules/tabtab/.completions/electron-forge.zsh ]] && . /Users/wangshuo/Library/Caches/pnpm/dlx/g4eumsy4pdkcpeekcc54bzeccq/19256c964fa-6cc6/node_modules/.pnpm/tabtab@2.2.2/node_modules/tabtab/.completions/electron-forge.zsh           vv  

[ -f "/Users/wangshuo/.ghcup/env" ] && . "/Users/wangshuo/.ghcup/env" # ghcup-env

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/wangshuo/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/wangshuo/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/wangshuo/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/wangshuo/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# bun completions
[ -s "/Users/wangshuo/.bun/_bun" ] && source "/Users/wangshuo/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

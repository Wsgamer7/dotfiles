#!/bin/bash
ln -sf ~/dotfiles/.bashrc ~
ln -sf ~/dotfiles/.zshrc ~
ln -sf ~/dotfiles/.bash_profile ~

bash ~/dotfiles/config/install.sh

homePath=$HOME
#Optional
isNewSystem=false
haveGUI=true
inChina=true
inCloud=false
swapEscCaps=true
dualSystem=true
need_rust=true
need_js=true
need_c=true
need_go=true
need_postgresql=true
need_docker=true
need_miniconda=true

#################################
scriptPath="${homePath}/dotfiles/script/"
echo $scriptPath
install_program_env() {
    if $need_rust; then
        bash ${scriptPath}rust_env.sh
    fi

    if $need_js; then
        bash ${scriptPath}js_env.sh
    fi

    if $need_c; then
        bash ${scriptPath}c_env.sh
    fi

    if $need_go; then
        bash ${scriptPath}go_env.sh
    fi

    if $need_postgresql; then
        bash ${scriptPath}postgresql_env.sh
    fi
    if $need_docker; then
        bash ${scriptPath}docker_env.sh
    fi
    if $need_miniconda; then
        bash ${scriptPath}miniconda.sh
    fi
}

if $isNewSystem; then
    echo "installing new system"
    bash ${scriptPath}gene_ssh_key.sh

    if $inChina && ! $inCloud; then
        bash ${scriptPath}cnSource.sh
    fi

    bash ${scriptPath}terminalApps.sh

    install_program_env

    if $haveGUI; then
        bash ${scriptPath}gui_app.sh
        bash ${scriptPath}swapEscCap.sh
        if $inChina; then
            bash ${scriptPath}inputMethod.sh
        fi
        if $dualSystem; then
            bash ${scriptPath}fixTime2sys.sh
        fi
    fi

fi

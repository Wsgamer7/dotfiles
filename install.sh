#!/bin/bash
homePath=$HOME
#Optional
isNewSystem=true
haveGUI=false
inChina=true
inCloud=false
swapEscCaps=false
dualSystem=false
need_rust=true
need_js=true
need_c=true
need_go=true
need_postgresql=true
need_docker=false
need_miniconda=true
need_ssh_key=true

#################################
scriptPath="${homePath}/dotfiles/script/"
echo $scriptPath
install_program_env() {
    if $need_js; then
        bash ${scriptPath}js_env.sh
    fi

    if $need_c; then
        bash ${scriptPath}c_env.sh
    fi

    if $need_go; then
        bash ${scriptPath}go_env.sh
    fi

    if $need_rust; then
        bash ${scriptPath}rust_env.sh
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
    if $need_ssh_key; then
        bash ${scriptPath}gene_ssh_key.sh
    fi

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

ln -sf ~/dotfiles/.zshrc ~

bash ~/dotfiles/config/install.sh

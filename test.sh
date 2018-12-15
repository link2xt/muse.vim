#!/usr/bin/env bash
set -e

if test '!' -e vader.vim; then
    git clone https://github.com/junegunn/vader.vim.git
fi

vim -Nu <(cat << VIMRC
filetype off
set rtp+=vader.vim
set rtp+=.
set rtp+=after
filetype plugin indent on
syntax enable
VIMRC
) -c 'Vader! test/*' > /dev/null

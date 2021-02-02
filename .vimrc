set number 

" Call the .vimrc.plug file
if filereadable(expand("~/.vimrc.plug"))
    source ~/.vimrc.plug
endif

if (has("termguicolors"))
  set termguicolors
endif

syntax enable

set ignorecase
set smartcase

colorscheme night-owl

source ~/.fzf/plugin/fzf.vim

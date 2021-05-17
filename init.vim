set nu
set ruler
set ai
set si
set wildmenu
set tabstop=4
set shiftwidth=4
set hidden

" Color Scheme
colorscheme onedark

call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'leafoftree/vim-vue-plugin'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'posva/vim-vue'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
call plug#end()


map <C-n> :NERDTreeToggle<CR>
let g:vim_vue_plugin_load_full_syntax = 1

" Prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

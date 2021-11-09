set nu
set ruler
set ai
set si
set wildmenu
set tabstop=2
set shiftwidth=2
set hidden
set expandtab

" Color Scheme
colorscheme onedark
source $HOME/.config/nvim/themes/onedark.vim

call plug#begin('~/.vim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()


map <C-n> :NERDTreeToggle<CR>

" Prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

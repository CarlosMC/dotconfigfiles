" .vimrc by CMC

" Install vim-plug plugin manager if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Install following plugins with vim-plug
call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-speeddating'
Plug 'tmux-plugins/vim-tmux'

"Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'arcticicestudio/nord-vim'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'flazz/vim-colorschemes'

Plug 'preservim/tagbar'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'

Plug 'godlygeek/tabular'
"Plug 'mg979/vim-visual-multi'
Plug 'sheerun/vim-polyglot'
Plug 'ntpeters/vim-better-whitespace'
Plug 'farmergreg/vim-lastplace'
Plug 'frazrepo/vim-rainbow'
Plug 'ryanoasis/vim-devicons'
call plug#end()

" set lightline.vim statusline/tabline theme
"let g:lightline = { 'colorscheme': 'nord', }
let g:airline_theme='nord'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

let g:nord_bold_vertical_split_line = 1
"let g:nord_cursor_line_number_background = 0

" set color theme
"colorscheme BlackSea
colorscheme nord

" active Rainbow Parentheses Improved globally
let g:rainbow_active = 1

" hide vim mode on last line
set noshowmode

" enable pluging and indent according to filetype
filetype plugin indent on
syntax on

set number
""set relativenumber

set cursorline
""set cursorcolumn

" if supported enable mouse
set mouse=a


" Tab navigation like Firefox.
" nnoremap <C-S-tab> :tabprevious<CR>
" nnoremap <C-tab>   :tabnext<CR>
" nnoremap <C-t>     :tabnew<CR>
" inoremap <C-S-tab> <Esc>:tabprevious<CR>i
" inoremap <C-tab>   <Esc>:tabnext<CR>i
" inoremap <C-t>     <Esc>:tabnew<CR>

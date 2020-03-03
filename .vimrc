
set clipboard=unnamedplus

colorscheme slate

syntax on
"filetype plugin indent on

vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

call plug#begin()
	"Plug 'airblade/vim-gitgutter'
	"Plug 'editorconfig/editorconfig-vim'
	Plug 'itchyny/lightline.vim'
	"Plug 'junegunn/fzf'
	"Plug 'junegunn/fzf.vim'
	"Plug 'mattn/emmet-vim'
	Plug 'scrooloose/nerdtree'
	Plug 'terryma/vim-multiple-cursors'
	"Plug 'tpope/vim-eunuch'
	Plug 'tpope/vim-surround'
	"Plug 'w0rp/ale'
	Plug 'tpope/vim-commentary'
	"Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
	"Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
	Plug 'godlygeek/tabular'
	Plug 'plasticboy/vim-markdown'
call plug#end()

set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

"set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯЖ;ABCDEFGHIJKLMNOPQRSTUVWXYZ:,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

set keymap=russian-jcukenwin
set iminsert=0 " Чтобы при старте ввод был на английском, а не русском (start > i)
set imsearch=0 " Чтобы при старте поиск был на английском, а не русском (start > /)
" Дополнительно можно добавить:
inoremap <C-l> <C-^> " Чтобы вместо Ctrl-^ нажимать Ctrl-L
highlight lCursor guifg=NONE guibg=Cyan " Смена цвета курсора

" ## Edit .vimrc ##
map ,v :vsp $MYVIMRC<CR>
"map ,V :source $MYVIMRC<CR>
autocmd! bufwritepost ~/.vimrc execute "normal! :source ~/.vimrc"


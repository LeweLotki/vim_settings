set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

packadd! dracula
syntax enable
colorscheme dracula

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

set splitbelow
set splitright

set hlsearch

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" open new screen verticaly
nnoremap <F1> :vs <CR> :edit
inoremap <F1> <esc> :vs <CR> :edit

" open new screen horizontaly
nnoremap <F2> :sp <CR> :edit
inoremap <F2> <esc> :sp <CR> :edit

" write file
nnoremap <F3> :w <CR>
inoremap <F3> <esc> :w <CR>

" write file and close all
nnoremap <F4> :wqa <CR>
inoremap <F4> <esc> :wqa <CR>

" override file and close
nnoremap <F5> :q! <CR>
inoremap <F5> <esc> :q! <CR>

" save session 
nnoremap <F6> :mks! <CR>
inoremap <F6> :mks! <CR>

" last tab
nnoremap <F7> :tabp <CR> 
inoremap <F7> <esc> :tabp <CR>

" next tab
nnoremap <F8> :tabN <CR>
inoremap <F8> <esc> :tabN <CR>

" left screen
nnoremap <F9> <C-W><C-H> 
inoremap <F9> <esc><C-W><C-H>

" right screen
nnoremap <F10> <C-W><C-L> 
inoremap <F10> <esc><C-W><C-L>

" show current directory tree
nnoremap <F12> <esc> :Vex <CR> 
inoremap <F12> <esc> :Vex <CR>

" allow fast scrolling
inoremap <C-F> <esc><C-F>
inoremap <C-B> <esc><C-B>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
" nnoremap <space> za

" automatic bracket closing
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap < <><left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

Plugin 'tmhedberg/SimpylFold'


au BufNewFile,BufRead *.py
    \ set tabstop=4	  |
    \ set softtabstop=4   |
    \ set shiftwidth=4    |
    \ set textwidth=79    |
    \ set expandtab	  |
    \ set autoindent	  |
    \ set fileformat=unix |

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2	|
    \ set softtabstop=2 |
    \ set shiftwidth=2  |

Plugin 'vim-scripts/indentpython.vim'

:set backspace=indent,eol,start

" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8

Bundle 'Valloric/YouCompleteMe'


let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>


Plugin 'vim-syntastic/syntastic'

Plugin 'nvie/vim-flake8'

let python_highlight_all=1
syntax on

Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'

if has('gui_running')
	  set background=dark
	    colorscheme solarized
else
"  colorscheme zenburn
endif

" forbide REPLACE
function s:ForbidReplace()
    if v:insertmode isnot# 'i'
        call feedkeys("\<Insert>", "n")
    endif
endfunction
augroup ForbidReplaceMode
    autocmd!
    autocmd InsertEnter  * call s:ForbidReplace()
    autocmd InsertChange * call s:ForbidReplace()
augroup END

"all togglebg#map("<F5>")

Plugin 'scrooloose/nerdtree'

Plugin 'jistr/vim-nerdtree-tabs'

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

Plugin 'kien/ctrlp.vim'

set nu

Plugin 'tpope/vim-fugitive'

Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

set clipboard=unnamed

"et editing-mode vi
" All of your Plugins must be added before the following line
call vundle#end()            " required


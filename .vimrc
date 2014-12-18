set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()

" let Vundle manage Vundle, required
"Plugin 'gmarik/Vundle.vim'
"Plugin 'Valloric/YouCompleteMe'

" Pathogen
let g:pathogen_disabled = []
if !has('gui_running')
    call add(g:pathogen_disabled, 'YouCompleteMe')
endif
execute pathogen#infect()
call pathogen#helptags()
syntax on

" All of your Plugins must be added before the following line
"call vundle#end()            " required
filetype plugin indent on    " required
"General Settings
syntax enable
"colorscheme monokai
colorscheme spacegray
set linespace=2
set nu
set expandtab
set shiftwidth=4
set autoindent
set smartindent
set cindent

nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

"jsbeautify
autocmd FileType javascript vnoremap <buffer>  <c-f> :call RangeJsBeautify()<cr>
autocmd FileType html vnoremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
autocmd FileType css vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr>



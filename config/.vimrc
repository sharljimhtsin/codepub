set sw=4
set ts=4
set foldlevel=99
set foldmethod=syntax
set ruler
set showcmd
set number
set modeline
set background=dark
set completeopt+=longest

let g:acp_compeleteoptPreview = 1

map <F3> za

nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
inoremap <expr> <CR>	pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <expr> <Down>	pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>	pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown>	pumvisible() ? "\<PageDown>\<C-n>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>	pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

syntax on
filetype indent plugin on
autocmd FileType python setlocal et sta sw =4 sts=4 foldmethod=indent
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

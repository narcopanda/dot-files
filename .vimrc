syntax on
"set termguicolors
"set t_Co=256
set number
set relativenumber
set undofile
"set spell!
"set clipboard=unnamed
set shiftwidth=2 softtabstop=2 expandtab
set autoindent
set pastetoggle=<F2>

let mapleader = ","

"folding
set foldmethod=syntax
imap jj <esc>
vmap m <esc>
"shortcut for saving
map <Leader>w <esc>:w<CR>
"shortcut for save and quiting
map <Leader>wq <esc>:wq<CR>
map <Leader>q <esc>:q<CR>

"this is for moving lines up and down
nnoremap <S-j> :m+<CR>==
nnoremap <S-k> :m-2<CR>==
inoremap <C-j> <Esc>:m+<CR>==gi
inoremap <C-k> <Esc>:m-2<CR>==gi
vnoremap <S-j> :m'>+<CR>gv=gv
vnoremap <S-k> :m-2<CR>gv=gv


call plug#begin()

	Plug 'scrooloose/nerdtree'
	Plug 'tpope/vim-fugitive'
	Plug 'thaerkh/vim-workspace'
	Plug 'airblade/vim-gitgutter'
	Plug 'bling/vim-airline'
	Plug 'jiangmiao/auto-pairs'
	Plug 'ervandew/supertab'
	Plug 'tpope/vim-surround'
        Plug 'tpope/vim-commentary'
	Plug 'majutsushi/tagbar'
	Plug 'severin-lemaignan/vim-minimap'
        Plug 'wikitopian/hardmode'
        Plug 'terryma/vim-multiple-cursors'
        Plug 'jceb/vim-orgmode'

        "autocomplete/syntax checker
        Plug 'Valloric/YouCompleteMe'
        "Plug 'vim-syntastic/syntastic'

        "snippets
        Plug 'SirVer/ultisnips'
        Plug 'honza/vim-snippets'

        "Tmux
        Plug 'christoomey/vim-tmux-navigator'
        Plug 'edkolev/tmuxline.vim'

        "Java
        Plug 'artur-shaik/vim-javacomplete2'

        "Scala
        Plug 'ensime/ensime-vim'
        Plug 'ktvoelker/sbt-vim'
        Plug 'derekwyatt/vim-scala'

        "indent tracker
        Plug 'Yggdroot/indentLine'

        "colorschemes
        Plug 'rakr/vim-one'
	Plug 'arcticicestudio/nord-vim'
        Plug 'dracula/vim', { 'as': 'dracula' }
        Plug 'sonph/onehalf', {'rtp': 'vim/'}
        Plug 'flazz/vim-colorschemes'
        Plug 'colepeters/spacemacs-theme.vim'
        Plug 'liuchengxu/space-vim-dark'
        Plug 'skielbasa/vim-material-monokai'
        Plug 'phanviet/vim-monokai-pro'
        Plug 'joshdick/onedark.vim'

        "Python
        Plug 'vim-scripts/indentpython.vim'

        " FZF / Ctrlp for file navigation
        if executable('fzf')
          Plug 'junegunn/fzf'
          Plug 'junegunn/fzf.vim'
        else
          Plug 'ctrlpvim/ctrlp.vim'
        endif

        "ruby
        Plug 'vim-ruby/vim-ruby'
        Plug 'tpope/vim-rails'
        Plug 'tpope/vim-endwise'

call plug#end()


"CtrlP plugin control
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'


"airline edits
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'
let g:airline#extensions#tmuxline#enabled = 0

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

"YOUCOMPLETEME
"---------------------------------------------------------------
"sets the path of clang for ycm
"let g:clang_library_path='/usr/lib/libclang.so'
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
"let g:ycm_global_ycm_extra_conf = "~/.vim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py

"NERDTree autoloader"
"function! StartUp()
"	if 0 == argc()
"		NERDTree
"	end
"endfunction
"autocmd VimEnter * call StartUp()


"NERDTree closer"
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"color scheme"
"--------------------"

"colorscheme monokai_pro

"set background=dark
"colorscheme material-monokai
"let g:materialmonokai_italic=1
"let g:airline_theme='materialmonokai'

"colorscheme one
"set background=dark
"let g:one_allow_italics = 1
"let g:airline_theme='one'

"colorscheme onedark
"let g:airline_theme='onedark'
"let g:onedark_terminal_italics = 1

"set background=dark
"colorscheme spacemacs-theme

"colorscheme nord
"let g:nord_italic_comments = 1
"let g:nord_comment_brightness = 12
"let g:airline_theme='nord'

"colorscheme dracula

"colorscheme onehalfdark
"let g:airline_theme='onehalfdark'
"let g:onehalfdark_terminal_italics = 1

colorscheme space-vim-dark
hi Normal     ctermbg=NONE guibg=NONE
hi LineNr     ctermbg=NONE guibg=NONE
hi SignColumn ctermbg=NONE guibg=NONE
hi Comment cterm=italic





"java autocomplete function"
autocmd FileType java setlocal omnifunc=javacomplete#Complete

nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
imap <F4> <Plug>(JavaComplete-Imports-AddSmart)

nmap <F5> <Plug>(JavaComplete-Imports-Add)
imap <F5> <Plug>(JavaComplete-Imports-Add)

nmap <F6> <Plug>(JavaComplete-Imports-AddMissing)
imap <F6> <Plug>(JavaComplete-Imports-AddMissing)

nmap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
imap <F7> <Plug>(JavaComplete-IMports-RemoveUnused)

nmap <leader>jI <Plug>(JavaComplete-Imports-AddMissing)
nmap <leader>jR <Plug>(JavaComplete-Imports-RemoveUnused)
nmap <leader>ji <Plug>(JavaComplete-Imports-AddSmart)
nmap <leader>jii <Plug>(JavaComplete-Imports-Add)

imap <C-j>I <Plug>(JavaComplete-Imports-AddMissing)
imap <C-j>R <Plug>(JavaComplete-Imports-RemoveUnused)
imap <C-j>i <Plug>(JavaComplete-Imports-AddSmart)
imap <C-j>ii <Plug>(JavaComplete-Imports-Add)

nmap <leader>jM <Plug>(JavaComplete-Generate-AbstractMethods)
imap <C-j>jM <Plug>(JavaComplete-Generate-AbstractMethods)
nmap <leader>jA <Plug>(JavaComplete-Generate-Accessors)
nmap <leader>js <Plug>(JavaComplete-Generate-AccessorSetter)
nmap <leader>jg <Plug>(JavaComplete-Generate-AccessorGetter)
nmap <leader>ja <Plug>(JavaComplete-Generate-AccessorSetterGetter)
nmap <leader>jts <Plug>(JavaComplete-Generate-ToString)
nmap <leader>jeq <Plug>(JavaComplete-Generate-EqualsAndHashCode)
nmap <leader>jc <Plug>(JavaComplete-Generate-Constructor)
nmap <leader>jcc <Plug>(JavaComplete-Generate-DefaultConstructor)

imap <C-j>s <Plug>(JavaComplete-Generate-AccessorSetter)
imap <C-j>g <Plug>(JavaComplete-Generate-AccessorGetter)
imap <C-j>a <Plug>(JavaComplete-Generate-AccessorSetterGetter)

vmap <leader>js <Plug>(JavaComplete-Generate-AccessorSetter)
vmap <leader>jg <Plug>(JavaComplete-Generate-AccessorGetter)
vmap <leader>ja <Plug>(JavaComplete-Generate-AccessorSetterGetter)

nmap <silent> <buffer> <leader>jn <Plug>(JavaComplete-Generate-NewClass)
nmap <silent> <buffer> <leader>jN <Plug>(JavaComplete-Generate-ClassInFile)

"airline tab functions"
let g:airlinge#extensions#tabline#show_splits = 1

"check one time after 4s of inactivity in normal mode
set autoread
au CursorHold * checktime
set modifiable

autocmd FileType javascript setlocal omnifunc=tern#Complete

let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <s-c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <s-c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <s-c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <s-c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <s-c-l> :TmuxNavigatePrevious<cr>

"use this for REFACTORING and use 'a' for the whole file
nmap <leader>r <esc>:%s/\<old\>/new/gcI

"replace word the cusour is on
nnoremap <Leader>sr :%s/\<<C-r><C-w>\>/new/gcI

"this sets the comments to italic
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
highlight Comment cterm=italic

"FZF stuff
let g:fzf_buffers_jump = 1
let g:fzf_tags_command = 'ctags -R'

let g:fzf_command_prefix = 'Fzf'
if executable('fzf')
  nnoremap <leader>f :FzfFiles<cr>
  nnoremap <leader>t :FzfTags<cr>
  nnoremap <leader>tb :FzfBTags<cr>
  nnoremap <leader>j :call fzf#vim#tags("'".expand('<cword>'))<cr>
  nnoremap <leader>c :FzfColors<CR>
  nnoremap <leader>l :FzfLines<CR>
  nnoremap <leader>bl :FzfBLines<CR>
  nnoremap <leader>ag :FzfAg<CR>
  nnoremap <leader>s :FzfSnippets<cr>
  nnoremap <leader>b :FzfBuffers<cr>

else
  nnoremap <leader>v :CtrlP<Space><cr>
endif

"java stuff
let java_fold=1

au BufRead,BufNewFile *.java set textwidth=99
au BufRead,BufNewFile *.java set tabstop=2
"spaces for indents
au BufRead,BufNewFile *.java set shiftwidth=2
au BufRead,BufNewFile *.java set expandtab
au BufRead,BufNewFile *.java set softtabstop=2

"Python stuff
" Number of spaces that a pre-existing tab is equal to.
au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=4

"spaces for indents
au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.py set softtabstop=4

" For full syntax highlighting:
let python_highlight_all=1
" Wrap text after a certain number of characters
au BufRead,BufNewFile *.py,*.pyw, set textwidth=79

" autmatically deletes all trailing whitespace on save
  autocmd BufWritePre * %s/\s\+$//e
" run xrdb whenever Xdefaults or Xresources are updated.
 " autocmd BufWritePost ~/.Xresources, ~/.Xdefaults !xrdb %

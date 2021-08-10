set mouse=a
set termguicolors

set number
set nowrap
set smarttab
set autoindent
set iskeyword+=-
set smartindent
set laststatus=0
set showtabline=4

syntax on
set relativenumber
set shiftwidth=4

let mapleader = ","

"folding
"set foldmethod=syntax
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
  Plug 'preservim/tagbar'
	Plug 'bling/vim-airline'
	Plug 'airblade/vim-gitgutter'
	Plug 'tpope/vim-fugitive'
	Plug 'preservim/nerdtree'
	Plug 'jiangmiao/auto-pairs'
	Plug 'sheerun/vim-polyglot'
	Plug 'omnisharp/omnisharp-vim'
	Plug 'skbolton/embark'
	Plug 'triglav/vim-visual-increment'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
	Plug 'junegunn/fzf.vim'
	Plug 'stsewd/fzf-checkout.vim'
	Plug 'xolox/vim-easytags'
	Plug 'xolox/vim-misc'
	Plug 'alvan/vim-closetag'
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
	Plug 'scrooloose/nerdcommenter'
	Plug 'wincent/terminus'
	Plug 'unblevable/quick-scope'
	Plug 'wesQ3/vim-windowswap'
	Plug 'justinmk/vim-sneak'
	Plug 'Yggdroot/indentLine'
	Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
	Plug 'norcalli/nvim-colorizer.lua'

	Plug 'kdheepak/lazygit.nvim'

	"autocomplete
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

	"colorscheme
	Plug 'Th3Whit3Wolf/space-nvim'
	Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep'  }

	"uncomment these when neovim goes to .5
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'norcalli/nvim-colorizer.lua'
	"Plug 'romgrk/barbar.nvim'
	Plug 'akinsho/nvim-bufferline.lua'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  "We recommend updating the parsers on update
	Plug 'nvim-treesitter/playground'
	Plug 'nvim-lua/popup.nvim'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'
	"Plug 'folke/trouble.nvim'
	"Plug 'folke/lsp-colors.nvim'

	"lsp stuff
	Plug 'neovim/nvim-lspconfig'
	"Plug 'akinsho/flutter-tools.nvim'
call plug#end()

lua require'colorizer'.setup()

if has('nvim') || has('termguicolors')
	  set termguicolors
endif

"colorscheme embark
colorscheme challenger_deep
"colorscheme space-nvim
"
"let g:airline_powerline_fonts = 1
let g:tagbar_type_dart = { 'ctagsbin': '~/.pub-cache/bin/dart_ctags' }

"NERDTree stuff
"let g:webdevicons_enable_nerdtree = 1
"nmap <leader>n :NERDTreeToggle<CR>
"NERDTree closer"
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeIgnore = ['^node_modules$']


" sync open file with NERDTree
" Check if NERDTree is open or active
"function! IsNERDTreeOpen()        
"	return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
"endfunction
"
"  " Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
"  " file, and we're not in vimdiff
"function! SyncTree()
"    if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
"        NERDTreeFind
"        wincmd p
"    endif
"endfunction
"
"" Highlight currently open buffer in NERDTree
"autocmd BufEnter * call SyncTree()"

"C#
let g:OmniSharp_server_stdio = 1
let g:OmniSharp_timeout = 30


" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
    endfunction

    inoremap <silent><expr> <Tab>
          \ pumvisible() ? "\<C-n>" :
                \ <SID>check_back_space() ? "\<Tab>" :
                      \ coc#refresh()



" coc global extenstion
let g:coc_global_extensions = [
    \'coc-snippets',
    \'coc-explorer',
    \'coc-webpack',
    \'coc-vimlsp',
    \'coc-ultisnips',
    \'coc-marketplace',
    \'coc-eslint',
    \'coc-vimtex',
    \'coc-tsserver',
    \'coc-tslint-plugin',
    \'coc-tslint',
    \'coc-omnisharp',
    \'coc-metals',
    \'coc-json',
    \'coc-java',
    \'coc-html',
    \'coc-css',
    \'coc-angular',
    \'coc-flutter'
    \]
let g:coc_explorer_global_presets = {
\   '.vim': {
\      'root-uri': '~/.vim',
\   
\   },
\   'floating': {
\      'position': 'floating',
\   },
\   'floatingTop': {
\     'position': 'floating',
\     'floating-position': 'center-top',
\   },
\   'floatingLeftside': {
\      'position': 'floating',
\      'floating-position': 'left-center',
\      'floating-width': 50,
\   },
\   'floatingRightside': {
\      'position': 'floating',
\      'floating-position': 'left-center',
\      'floating-width': 50,
\   },
\   'simplify': {
\     'file.child.template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   }
\ }

" Use preset argument to open it
nmap <leader>n :CocCommand explorer --preset<CR>
nmap <space>n :CocCommand explorer --preset floating<CR>
"To code navigation.
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>rr <Plug>(coc-rename)
nmap <leader>g[ <Plug>(coc-diagnostic-prev)
nmap <leader>g] <Plug>(coc-diagnostic-next)
nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev-error)
nmap <silent> <leader>gn <Plug>(coc-diagnostic-next-error)
nnoremap <leader>cr :CocRestart

" List all presets
nmap <space>el :CocList explPresets

 "--- vim go (polyglot) settings.
 let g:go_highlight_build_constraints = 1
 let g:go_highlight_extra_types = 1
 let g:go_highlight_fields = 1
 let g:go_highlight_functions = 1
 let g:go_highlight_methods = 1
 let g:go_highlight_operators = 1
 let g:go_highlight_structs = 1
 let g:go_highlight_types = 1
 let g:go_highlight_function_parameters = 1
 let g:go_highlight_function_calls = 1
 let g:go_highlight_generate_tags = 1
 let g:go_highlight_format_strings = 1
 let g:go_highlight_variable_declarations = 1
 let g:go_auto_sameids = 1

"telescope
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"trouble
"nnoremap <leader>xx <cmd>TroubleToggle<cr>
"nnoremap <leader>xw <cmd>TroubleToggle lsp_workspace_diagnostics<cr>
"nnoremap <leader>xd <cmd>TroubleToggle lsp_document_diagnostics<cr>
"nnoremap <leader>xq <cmd>TroubleToggle quickfix<cr>
"nnoremap <leader>xl <cmd>TroubleToggle loclist<cr>
"nnoremap gR <cmd>TroubleToggle lsp_references<cr>

 "fzf
let g:fzf_buffer_jump = 1
let g:fzf_tags_command = 'ctags -R'
let g:fzf_layout = {'window': {'width': 0.8, 'height': 0.8}}
let $FZF_DEFAULT_OPTS='--reverse'
let g:fzf_command_prefix = 'Fzf'
if executable('fzf')
	"nnoremap <leader>f :FzfFiles<cr>
	"nnoremap <leader>t :FzfTags<cr>
	nnoremap <leader>tb :FzfBTags<cr>
	"nnoremap <leader>j :call fzf#vim#tags("'".expand('<cword>'))<cr>
	"nnoremap <leader>c :FzfColors<CR>
	"nnoremap <leader>l :FzfLines<CR>
	"nnoremap <leader>bl :FzfBLines<CR>
	"nnoremap <leader>ag :FzfAg<CR>
	"nnoremap <leader>s :FzfSnippets<cr>
	"nnoremap <leader>b :FzfBuffers<cr>
	"nnoremap <leader>gc :FzfGBranches<CR>
else
	nnoremap <leader>v :CtrlP<Space><cr>
endif


let g:fzf_branch_actions = {
      \   'checkout': {
      \   'prompt': 'Checkout> ',
      \   'execute': 'echo system("{git} checkout {branch}")',
      \   'multiple': v:false,
      \   'keymap': 'enter',
      \   'required': ['branch'],
      \   'confirm': v:false,
      \},
	    \ 'track': {
      \   'prompt': 'Track> ',
      \   'execute': 'echo system("{git} checkout --track {branch}")',
      \   'multiple': v:false,
      \   'keymap': 'alt-enter',
      \   'required': ['branch'],
      \   'confirm': v:false,
      \},
	    \ 'create': {
      \   'prompt': 'Create> ',
      \   'execute': 'echo system("{git} checkout -b {input}")',
      \   'multiple': v:false,
      \   'keymap': 'ctrl-n',
      \   'required': ['input'],
      \   'confirm': v:false,
      \},
	    \ 'delete': {
      \   'prompt': 'Delete> ',
      \   'execute': 'echo system("{git} branch -D {branch}")',
      \   'multiple': v:true,
      \   'keymap': 'ctrl-d',
      \   'required': ['branch'],
      \   'confirm': v:true,
      \},
	    \ 'merge':{
      \   'prompt': 'Merge> ',
      \   'execute': 'echo system("{git} merge {branch}")',
      \   'multiple': v:false,
      \   'keymap': 'ctrl-e',
      \   'required': ['branch'],
      \   'confirm': v:true,
      \},
      \}

"fuzzy find selected word
nnoremap <leader>aa :FzfAg <C-R><C-W><CR>

" setup mapping to call :LazyGit
nnoremap <silent> <leader>lg :LazyGit<CR>

"lua stuff

"colorizer
lua << EOF
require('colorizer').setup(
	{'*'},
	{
			RGB = true;
			RRGGBB = true;
			names = true;
			RRGGBBAA = true;
			rgb_fn = true;
			hsl_fn = true;
			css = true;
			css_fn = true;
});
EOF

"telescope
lua << EOF
require('telescope').setup{
	defaults = {
	    vimgrep_arguments = {
	      'rg',
	      '--color=never',
	      '--no-heading',
	      '--with-filename',
	      '--line-number',
	      '--column',
	      '--smart-case'
	    },
	    prompt_position = "bottom",
	    prompt_prefix = "> ",
	    selection_caret = "> ",
	    entry_prefix = "  ",
	    initial_mode = "insert",
	    selection_strategy = "reset",
	    sorting_strategy = "descending",
	    layout_strategy = "horizontal",
	    layout_defaults = {
	      horizontal = {
	        mirror = false,
	      },
	      vertical = {
	        mirror = false,
	      },
	    },
	    file_sorter =  require'telescope.sorters'.get_fuzzy_file,
	    file_ignore_patterns = {},
	    generic_sorter =  require'telescope.sorters'.get_generic_fuzzy_sorter,
	    shorten_path = true,
	    winblend = 0,
	    width = 0.75,
	    preview_cutoff = 120,
	    results_height = 1,
	    results_width = 0.8,
	    border = {},
	    borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
	    color_devicons = true,
	    use_less = true,
	    set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
	    file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
	    grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
	    qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,
	
	    -- Developer configurations: Not meant for general override
	    buffer_previewer_maker = require'telescope.previewers'.buffer_previewer_maker
	}
}
EOF

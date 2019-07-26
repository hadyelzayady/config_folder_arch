let mapleader = ","
call plug#begin()
"autocom
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-clang'
Plug 'tpope/vim-surround'
"Plug 'vim-airline/vim-airline'
Plug '~/.fzf'

" autocomplete - deoplete 
"Plug 'Rip-Rip/clang_complete'

" autocompletion (also a linter - diagnostics)
"Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }

" autocomplete - roxma
"Plug 'roxma/nvim-completion-manager'
"Plug 'roxma/ncm-clang'
 
" ale - linter / autocompletion / formatter
Plug 'w0rp/ale'

" auto formatter
Plug 'rhysd/vim-clang-format'

" nerd tree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
"Plug 'scrooloose/nerdcommenter'
Plug 'octol/vim-cpp-enhanced-highlight'
"Plug 'vim-scripts/DfrankUtil'
"Plug 'vim-scripts/vimprj'
"Plug 'vim-scripts/indexer.tar.gz'
"Plug 'SirVer/ultisnips'

" easy motion
"Plug 'easymotion/vim-easymotion'

" A - for switching between source and header files
"Plug 'vim-scripts/a.vim'




Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'kovetskiy/sxhkd-vim' " keys binding
"typescript
"Plug 'HerringtonDarkholme/yats.vim'
"Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
" For Denite features
"Plug 'Shougo/denite.nvim'
Plug 'tpope/vim-surround'
Plug 'jreybert/vimagit'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()
set clipboard=unnamedplus
"set clipboard+=unnamed
"noremap <Leader>y "*y
"noremap <Leader>p "*p
"noremap <Leader>Y "+y
"noremap <Leader>P "+p
map <Leader>y "*y
map <Leader>p "*p
noremap <C-N> :FZF<cr> 
"init of plugins
"let g:deoplete#enable_at_startup = 1
"remove default statusline
set noshowmode
set number
color dracula
"set encoding=utf-8
"end init of plugins
" mapping keys
" choose from deoplete autocomplete menu by ctr+j,ctrl+k (2 lines)
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
nmap <leader>ne :NERDTreeToggle<cr>
" end mapping keys
"make path if not exist .ex: nvim ~/blah/blah/blah.cpp will auto
"create these directories
"function s:MkNonExDir(file, buf)
"    if empty(getbufvar(a:buf, '&buftype')) && a:file!~#'\v^\w+\:\/'
"        let dir=fnamemodify(a:file, ':h')
"        if !isdirectory(dir)
"            call mkdir(dir, 'p')
"        endif
"    end iDTree #########################

" quit nerd tree on file open
let g:NERDTreeQuitOnOpen = 1

" show nerd tree always on the right instead on the left
let g:NERDTreeWinPos = "right"

" ################ UltiSnips ########################

" make a dir Ultisnips in: '~/.config/nvim/UltiSnips/'
" and put your snippets in there
" eg. cpp.snippets

let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsUsePythonVersion = 3
set expandtab
set shiftwidth=4
" ################ Clang complete ###################

"let g:clang_use_library = 1
"let g:clang_library_path='/usr/lib/llvm-5.0/lib/libclang.so.1'
"let g:clang_periodic_quickfix=1
"let g:clang_auto_select = 1

"let g:clang_snippets = 1
"let g:clang_snippets_engine = 'ultisnips'

" I don't know how to change the keybindings to navigate
" the 'completion suggestions menu' with ctrl+k and ctrl+l
"inoremap <C-k> <Down>
"inoremap <C-l> <Up>


" ################ YouCompleteMe ####################

let g:ycm_show_diagnostics_ui = 0

let g:ycm_key_list_select_completion = ['<C-k>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-l>', '<Up>']
let g:SuperTabDefaulCompletionType = '<C-k>'

" disable annoying ycm confirmation
let g:ycm_confirm_extra_conf = 1

" add path to ycm_extra_conf.py (you could also copy the file in the home folder)
" delete '...98' argument from .ycm_extra_conf.py, otherwise syntastic does
" not work properly
let g:ycm_global_ycm_extra_conf = '/home/hady/.config/nvim/plugged/YouCompleteMe/.ycm_extra_conf.py'

 
" ################ Ale ##############################
 
" autocompletion
let g:ale_completion_enabled = 1

let g:ale_cpp_clang_executable = 'clang++-5.0'

" linter
 let g:ale_linters = {
            \   'cpp': ['clang']
            \}
let g:ale_cpp_clang_options = '-std=c++1z -O0 -Wextra -Wall -Wpedantic -I /usr/include/eigen3'
"let g:ale_cpp_clangtidy_options = '-checks="cppcoreguidelines-*"'
"let g:ale_cpp_cpplint_options = ''
"let g:ale_cpp_gcc_options = ''
"let g:ale_cpp_clangcheck_options = ''
"let g:ale_cpp_cppcheck_options = ''


" ################ Clang format #####################
 
" Clang format - auto formatting
 
let g:clang_format#command = 'clang-format-3.8'
let g:clang_format#style_options = {
            \ "BreakBeforeBraces" : "Attach",
            \ "UseTab" : "Never",
            \ "IndentWidth" : 4,
            \ "ColumnLimit" : 100,
	    \ "AccessModifierOffset": -4,
            \ "AllowShortIfStatementsOnASingleLine" : "false",
            \ "AllowShortFunctionsOnASingleLine" : "false",
            \}

" shortcuts for autoformatting the entire file: Ctrl+j
inoremap <C-j> <Esc>:ClangFormat<CR>a
nnoremap <C-j> <Esc>:ClangFormat<CR>


" ################ A ################################

"augroup BWCCreateDir
"    autocmd!
"    autocmd BufWritePre * :call s:MkNonExDir(expand('<afile>'), +expand('<abuf>'))
"augroup END
"end make path
command! -nargs=0 Sw w !sudo tee % > /dev/null

if exists('veonim')
set guifont=SF\ Mono:h16
set linespace=10
" built-in plugin manager
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'

" extensions for web dev
let g:vscode_extensions = [
  \'vscode.typescript-language-features',
  \'vscode.json-language-features',
  \'vscode.css-language-features',
  \'vscode.markdown-language-features',
  \'vscode.html-language-features',
  \'ms-python.python',
\]

" multiple nvim instances
nno <silent> <c-t>c :Veonim vim-create<cr>
nno <silent> <c-g> :Veonim vim-switch<cr>
nno <silent> <c-t>, :Veonim vim-rename<cr>

" workspace functions
nno <silent> ,f :Veonim files<cr>
nno <silent> ,e :Veonim explorer<cr>
nno <silent> ,b :Veonim buffers<cr>
nno <silent> ,d :Veonim change-dir<cr>
"or with a starting dir: nno <silent> ,d :Veonim change-dir ~/proj<cr>

" searching text
nno <silent> <space>fw :Veonim grep-word<cr>
vno <silent> <space>fw :Veonim grep-selection<cr>
nno <silent> <space>fa :Veonim grep<cr>
nno <silent> <space>ff :Veonim grep-resume<cr>
nno <silent> <space>fb :Veonim buffer-search<cr>

" language features
nno <silent> sr :Veonim rename<cr>
nno <silent> sd :Veonim definition<cr>
nno <silent> si :Veonim implementation<cr>
nno <silent> st :Veonim type-definition<cr>
nno <silent> sf :Veonim references<cr>
nno <silent> sh :Veonim hover<cr>
nno <silent> sl :Veonim symbols<cr>
nno <silent> so :Veonim workspace-symbols<cr>
nno <silent> sq :Veonim code-action<cr>
nno <silent> sk :Veonim highlight<cr>
nno <silent> sK :Veonim highlight-clear<cr>
nno <silent> ,n :Veonim next-usage<cr>
nno <silent> ,p :Veonim prev-usage<cr>
nno <silent> sp :Veonim show-problem<cr>
nno <silent> <c-n> :Veonim next-problem<cr>
nno <silent> <c-p> :Veonim prev-problem<cr>

endif


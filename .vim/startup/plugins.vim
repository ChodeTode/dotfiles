"------------------------------------------------------------
" VUNDLE
"------------------------------------------------------------
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
" add vim plugins here
"
Plugin 'Chiel92/vim-autoformat'
"Plugin 'lervag/vimtex'
"Plugin 'python-mode/python-mode'
Plugin 'davidhalter/jedi-vim'
Plugin 'powerman/vim-plugin-autosess'
Plugin 'scrooloose/nerdtree'
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'junegunn/vim-easy-align'
"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'tpope/vim-fugitive'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'abolish.vim'
Plugin 'repeat.vim'
Plugin 'surround.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"------------------------------------------------------------
"----------------------- VUNDLE END -------------------------
"------------------------------------------------------------
"------------------------------------------------------------
"
"------------------------------------------------------------
" YouCompleteMe PLUGIN SETUP
"------------------------------------------------------------
"let g:ycm_filetype_blacklist = {}
let g:ycm_filetype_specific_completion_to_disable = {
        \ 'gitcommit': 1
        \}
"------------------------------------------------------------
" ultisnips PLUGIN SETUP 
"------------------------------------------------------------
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-e>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"------------------------------------------------------------
" syntastic PLUGIN SETUP
"------------------------------------------------------------
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
" Syntastic Statusline configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"------------------------------------------------------------
" nerdtree PLUGIN SETUP
"------------------------------------------------------------
let NERDTreeWinSize=26
autocmd StdinReadPre * let s:std_in=1
"ignore some files
let NERDTreeRespectWildIgnore=1
" close nerdtree on close
autocmd VimLeave * NERDTreeClose
"auto open nerdtree
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>

"------------------------------------------------------------
" easyalign PLUGIN SETUP
"------------------------------------------------------------
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"------------------------------------------------------------
" ctrlp PLUGIN SETUP
"------------------------------------------------------------
"ctrlp show hidden files
let g:ctrlp_show_hidden=1

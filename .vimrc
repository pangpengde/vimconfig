set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
"
Plugin 'The-NERD-tree'
Plugin 'git@github.com:vim-scripts/matchit.zip.git'
Plugin 'git@github.com:othree/xml.vim.git'
Plugin 'git@github.com:kien/ctrlp.vim.git'
Plugin 'git@github.com:vim-scripts/EasyMotion.git'

" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line

" 配色
colorscheme obsidian

"## 快捷键
" ,bf 查看buffer并且输入数字即可跳转
:nnoremap ,bf :ls<CR>:buffer<Space>
" F4 全局查找当前单词
noremap <F4> :grep -R <C-R><C-W> * <CR>
" 跳转窗口
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
let g:EasyMotion_leader_key = ','

"## 插件
"filetype plugin indent on
"runtime bundle/vim-pathogen/autoload/pathogen.vim
"call pathogen#infect()
"Helptags
" 按下 F2 调出/隐藏 NERDTree
nnoremap <F2> :exe 'NERDTreeToggle'<CR> 
let g:ctrlp_working_path_mode = 'r'

" 设置
set nu
set laststatus=2
set ruler
set cursorline
set hlsearch
set incsearch
set nobackup
set autoindent
set path=.,**
set ignorecase
set smartcase
set hidden
set tags=./tags,tags;/
set sw=4
set ts=4
set sts=4
set et
" TODO
set ci
set viminfo='1000,<500,s100,h
set ambiwidth=double
set showcmd
set showmode
set title
set titlestring=%f

syntax on

" 其他
" 在BufWritePost(保存)时自动执行'xxx tpl.py %'当前文件路径
autocmd BufWritePost *.tpl execute '!~/browser-fe/common/build/tpl.py %'
" TODO 貌似是清除空白符
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" 取消VI兼容，VI键盘模式不易用 
set nocompatible              " be iMproved, required
" 打开文件类型检测功能
filetype off                " required

" ===========================================================
" --------------------- Vundle 插件管理 ---------------------
" ===========================================================

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" ======================================================

" ---------------------- 工具 ----------------------

" Tagbar - 代码内Tag窗口
Plugin 'git://github.com/vim-scripts/Tagbar.git'

" Taglist - Tag窗口
Plugin 'git://github.com/vim-scripts/taglist.vim.git'

" NERDtree - 文件浏览/管理窗口
Plugin 'git://github.com/scrooloose/nerdtree.git'

" CTRLP - 文件搜索
Plugin 'git://github.com/kien/ctrlp.vim.git'

" AG - 搜索增强
Plugin 'git://github.com/vim-scripts/ag.vim.git'

" Vim-airline - 状态条/buffer浏览
Plugin 'git://github.com/vim-scripts/vim-airline.git'

" air-line 主题
Plugin 'vim-airline/vim-airline-themes'

" gitgutter - 显示代码git状态和对比
Plugin 'git://github.com/vim-scripts/vim-gitgutter.git'

" Winmanager - 窗口布局管理
Plugin 'git://github.com/vim-scripts/winmanager.git'

" Undotree - 时光机
Plugin 'git://github.com/mbbill/undotree.git'

" Gundo - 时光机
" 需要Python2编译Vim
"Plugin 'git://github.com/vim-scripts/Gundo.git'

" minibufexplorerpp - buffer浏览器
"Plugin 'git://github.com/vim-scripts/minibufexplorerpp.git'

" ---------------------- 主题 ----------------------

" Solarized
Plugin 'git://github.com/altercation/vim-colors-solarized.git'

" Molokai
Plugin 'git://github.com/tomasr/molokai.git'

" Wombat256
Plugin 'git://github.com/vim-scripts/wombat256.vim.git'

" ---------------------- 语法 ----------------------

" Syntastic - 语法检查
" Plugin 'git://github.com/vim-syntastic/syntastic.git'

" ALE - 语法检查 - 适配vim8.0
" Plugin 'w0rp/ale'

" auto-pairs
Plugin 'git://github.com/jiangmiao/auto-pairs.git'

" Indent-Guides - 对齐线
Plugin 'git://github.com/vim-scripts/Indent-Guides.git'

" NERDCommenter - 快捷注释
Plugin 'git://github.com/scrooloose/nerdcommenter.git'

" Supertab - 代码补全
" Plugin 'git://github.com/ervandew/supertab.git'

" Emmet - HTML/CSS/Javascript 快捷代码
Plugin 'git://github.com/mattn/emmet-vim.git'

" YouCompleteMe - 代码补全
Plugin 'Valloric/YouCompleteMe'
" Plugin 'git://github.com/Valloric/YouCompleteMe.git'

" Python-mode - Python增强
Plugin 'klen/python-mode'
" Plugin 'git://github.com/python-mode/python-mode.git'

" Jedi-vim - Python代码补全
" 和Python-mode冲突
" Plugin 'davidhalter/jedi-vim'
" Plugin 'git://github.com/davidhalter/jedi-vim.git'

" ==========================================================

" All of your Plugins must be added before the following line
" 允许使用插件
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

" ===========================================================
" ------------------------ 插件配置 -------------------------
" ===========================================================

" ---------------------- air-line ----------------------
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" ---------------------- Indent Guides 对齐线 ----------------------
let g:indent_guides_guide_size=1
let g:indent_guides_auto_colors = 0

" ---------------------- NERDComment ----------------------
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1


" ---------------------- Supertab ----------------------
" let g:SuperTabMappingForward = "<tab>"
" let g:SuperTabMappingBackward= "s-tab"

" ---------------------- Taglist ----------------------
" 不同时显示多个文件的 tag ，只显示当前文件的
let Tlist_Show_One_File=1
" 如果 taglist 窗口是最后一个窗口，则退出 vim
let Tlist_Exit_OnlyWindow=1
" 让当前不被编辑的文件的方法列表自动折叠起来
let Tlist_File_Fold_Auto_Close=1
" 显示taglist菜单
let Tlist_Show_Menu=1

" ---------------------- Winmanager ----------------------
" 设置界面分割
let g:winManagerWindowLayout = "NERDTree|TagList,Tarbar"
" 设置winmanager的宽度，默认为25
let g:winManagerWidth = 30

" ---------------------- NERDTree ----------------------
let NERDTreeAutoCenter=1
let NERDTreeMouseMode=2
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
let NERDTreeWinSize=30
let NERDTreeStatusline=1
let g:NERDTree_title='NERD Tree'
function! NERDTree_Start()
	exec 'NERDTree'
endfunction
function! NERDTree_IsValid()
	return 1
endfunction
" ---------------------- Tagbar ----------------------
let g:tagbar_width=30

" ---------------------- ALE 语法检查 ----------------------
" let &runtimepath.=',~/.vim/bundle/ale'
" " 始终开启语法标志列
" let g:ale_sign_column_always = 1
" " 随时检查语法错误
" let g:ale_lint_on_text_changed = 'normal'
" " 检查延时
" let g:ale_lint_delay = 10000
" " 打开文件时检查
" let g:ale_lint_on_enter = 1
" " 自定义error和warning图标
" let g:ale_sign_error = '➜'
" let g:ale_sign_warning = '⦿'
" " 自定义输出格式
" let g:ale_echo_msg_error_str = 'E'
" let g:ale_echo_msg_warning_str = 'W'
" let g:ale_echo_msg_format = '[%severity%] [%linter%] %s'
" " 在airline中添加状态
" function! LinterStatus() abort
"     let l:counts = ale#statusline#Count(bufnr(''))
"     let l:all_errors = l:counts.error + l:counts.style_error
"     let l:all_non_errors = l:counts.total - l:all_errors
"     return l:counts.total == 0 ? 'OK' : printf(
"     \   '%dW %dE',
"     \   all_non_errors,
"     \   all_errors
"     \)
" endfunction
" set statusline=%{LinterStatus()}

" ---------------------- Sytastic 语法检查 ----------------------
" configure syntastic syntax checking to check on open as well as save
" let g:syntastic_check_on_open=1
" let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_wq = 0
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" ---------------------- Undotree ----------------------
let g:undotree_SplitWidth = 30
let g:undotree_DiffpanelHeight = 15
if has("persistent_undo")
    set undodir=~/.undodir/
    set undofile
endif

" ---------------------- CTRLP ----------------------
let g:ctrlp_use_caching = 0
" 调用ag进行搜索提升速度，同时不使用缓存文件
if executable('ag')
	" Use Ag over Grep
	set grepprg=ag\ --nogroup\ --nocolor
	" Use ag in CtrlP for listing files.
	let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
	" Ag is fast enough that CtrlP doesn't need to cache
	let g:ctrlp_use_caching = 0
endif
" Ctrlp配置
"设置搜索时忽略的文件
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
    \ }
let g:ctrlp_working_path_mode = 0
let g:ctrlp_match_window_bottom = 1
"修改QuickFix窗口显示的最大条目数
let g:ctrlp_max_height = 8
let g:ctrlp_match_window_reversed = 0
"设置MRU最大条目数为500
let g:ctrlp_mruf_max = 300
let g:ctrlp_follow_symlinks = 1
"默认使用全路径搜索，置1后按文件名搜索，准确率会有所提高，可以用<C-d>进行切换
let g:ctrlp_by_filename = 1
"默认不使用正则表达式，置1改为默认使用正则表达式，可以用<C-r>进行切换
let g:ctrlp_regexp = 0

" ---------------------- Gundo ----------------------
" let g:gundo_width=30

" ---------------------- Pythonmode ----------------------
" Python 3 Syntax
let g:pymode_python = 'python3'
" 开启代码折叠
let g:pymode_folding = 1
" 开启python内移动快捷键
" -----------------------------------
" [[    Jump to previous class or function (normal, visual,operator modes)
" ]]    Jump to next class or function  (normal, visual, operator modes)
" [M    Jump to previous class or method (normal, visual, operator modes)
" ]M    Jump to next class or method (normal, visual, operator modes)
" aC    Select a class. Ex: vaC, daC, yaC, caC (normal, operator modes)
" iC    Select inner class. Ex: viC, diC, yiC, ciC (normal, operator modes)
" aM    Select a function or method. Ex: vaM, daM, yaM, caM (normal, operator modes)
" iM    Select inner function or method. Ex: viM, diM, yiM, ciM (normal, operator modes)
" -----------------------------------
let g:pymode_motion = 1
" 设置中断点
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'
" 开启代码检查
let g:pymode_lint = 1
" 每当保存时进行代码检查
let g:pymode_lint_on_write = 1
" 设定代码检查工具
let g:pymode_lint_checkers = ['pyflakes', 'pep8']
" Skip errors and warnings
" E.g. '"E501,W002"', '"E2,W"' (Skip all Warnings and Errors that starts with E2) and etc
let g:pymode_lint_ignore = "E501"
" 自定义检查符号
let g:pymode_lint_todo_symbol = '●'
let g:pymode_lint_comment_symbol = '●'
let g:pymode_lint_visual_symbol = '■'
let g:pymode_lint_error_symbol = '➔'
let g:pymode_lint_info_symbol = '⚑'
let g:pymode_lint_pyflakes_symbol = '⦿'
" 不在父目录下查找.ropeproject，能提升响应速度
let g:pymode_rope_lookup_project = 0
"重命名光标下的函数，方法，变量及类名
let g:pymode_rope_rename_bind = '<leader>u'
"重命名光标下的模块或包
let g:pymode_rope_rename_module_bind = '<leader>i'
" 移动至定义处
let g:pymode_rope_goto_definition_bind = '<C-c>g'
" 代码补全
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_completion_bind = '<C-N>'
let g:pymode_rope_autoimport_modules = ['os','numpy']
" 关闭rope
let g:pymode_rope = 0

" ---------------------- YouCompleteMe  ------------------------
" Python3
let g:ycm_python_binary_path = '/home/leander/anaconda3/bin/python3.6'
" 不显示开启vim时检查ycm_extra_conf文件的信息
let g:ycm_confirm_extra_conf=0
" 开启基于tag的补全，可以在这之后添加需要的标签路径
let g:ycm_collect_identifiers_from_tags_files= 0
" 注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0
" 输入第 n 个字符开始补全
let g:ycm_min_num_of_chars_for_completion= 2
" 候选词个数下限
let g:ycm_min_num_identifier_candidate_chars = 0
" 禁止缓存匹配项，每次都重新生成匹配项
let g:ycm_cache_omnifunc=1
" 开启语义补全
let g:ycm_seed_identifiers_with_syntax= 1
" 开启补全函数、方法、类说明窗口，并自动关闭
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_insertion = 0
" 注释输入中也能补全
let g:ycm_complete_in_comments = 0
" 在字符串输入中也能补全
let g:ycm_complete_in_strings = 0
" 设置在下面几种格式的文件上屏蔽ycm
let g:ycm_filetype_blacklist = {
\ 'tagbar' : 1,
\ 'taglist' : 1,
\ 'nerdtree' : 1,
\ 'qf' : 1,
\ 'notes' : 1,
\ 'markdown' : 1,
\ 'unite' : 1,
\ 'text' : 1,
\ 'vimwiki' : 1,
\ 'pandoc' : 1,
\ 'infolog' : 1,
\ 'mail' : 1
\}

" ===========================================================
" ------------------------ 基本配置 -------------------------
" ===========================================================

" 语法高亮
syntax on
syntax enable
" 显示行号
set number
" 标尺功能，显示当前光标所在行列号
set ruler
" 关闭vi模式
set nocp
" 纵向新建窗口时在下方
set splitbelow
" 横向新建窗口时在右方
set splitright
" 继承前一行的缩进方式，特别适用于多行注释
set autoindent
" 制表符为4
set tabstop=4
" 统一缩进为4
set softtabstop=4
set shiftwidth=4
" 不同文件类型采用不同缩进
filetype indent on
" 高亮被搜索的句子
set hlsearch
" 在搜索时，输入的词句的逐字符高亮
set incsearch
" 在搜索的时候忽略大小写
set ignorecase
" 高亮显示匹配的括号
set showmatch
" 为C程序提供自动缩进
" set smartindent
" 使用 C/C++ 语言的自动缩进方式
" set cindent
" 设置代码长度标记线
set colorcolumn=81
" 允许使用退格键
set backspace=2
" 粘贴时保留格式
"set paste
" 历史命令保存行数
set history=100
" 使用鼠标（v\i模式）
set mouse=vi
" 允许区域选择
set selection=exclusive
set selectmode=mouse,key
" 取消自动备份及产生swp文件
set nobackup
set nowb
set noswapfile
" 当文件被外部改变时自动读取
set autoread
" 不显示当前模式
set noshowmode
" 命令行显示输入的命令
"set showcmd
" 光标从行首和行末时可以跳到另一行去
set whichwrap=h,l,b,s,<,>,[,]
" 自动补全
filetype plugin indent on
set completeopt=longest,menu

" 自动补全命令时候使用菜单式匹配列表
set wildmenu
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType java set omnifunc=javacomplete#Complet

" 总显示最后一个窗口的状态行；
" 设为1则窗口数多于一个的时候显示最后一个窗口的状态行；
" 0不显示最后一个窗口的状态行
set laststatus=2

"设定默认解码
set fenc=utf-8
set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936

" 取消换行
"set fillchars=vert:\ ,stl:\ ,stlnc:\

" ---------------------- GUI配置 ----------------------

" GUI字体大小
set guifont=Ubuntu_Mono_derivative_Powerline:h16
" 关闭左侧垂直分割滚动条
set guioptions-=L
" 关闭右侧滚动条
set guioptions-=r

" ===========================================================
" ------------------------ 配色方案 -------------------------
" ===========================================================

" 设置颜色
set t_Co=256
set background=dark

" 在被分割的窗口间显示空白，便于阅读
"set fillchars=vert:\ ,stl:\ ,stlnc:\

" 界面主题
colorscheme molokai
"colorscheme solarized
"let g:solarized_termtrans = 1
"colorscheme wombat256mod

" air-line 主题
let g:airline_theme='powerlineish'

" 高亮光标所在行
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
hi CursorLine    term=bold  cterm=bold   ctermfg=NONE  ctermbg=236
hi cursorcolumn  term=NONE  cterm=NONE   ctermfg=NONE  ctermbg=236
set cursorline cursorcolumn

hi Comment       cterm=NONE ctermbg=NONE ctermfg=245
hi Search        cterm=bold ctermbg=32   ctermfg=251
hi IncSearch     cterm=bold ctermbg=130  ctermfg=251
hi Visual        cterm=bold ctermbg=239  ctermfg=NONE
hi ColorColumn   cterm=NONE ctermbg=235  ctermfg=NONE
hi QuickFixLine  cterm=bold ctermbg=238  ctermfg=NONE
hi Normal        cterm=NONE ctermbg=NONE ctermfg=252
hi LineNr        term=underline ctermfg=250 ctermbg=237

" 对齐线颜色
hi IndentGuidesOdd  ctermbg=235
hi IndentGuidesEven ctermbg=235

" 匹配括号
hi MatchParen    cterm=bold ctermfg=251  ctermbg=244

" 提示符
hi Error         cterm=bold ctermfg=161  ctermbg=234
hi vimError      cterm=bold ctermfg=161  ctermbg=234
hi WarningMSG    cterm=bold ctermfg=14   ctermbg=234
hi SignColumn    cterm=NONE ctermfg=NONE ctermbg=234

" hi VertSplit     cterm=bold ctermbg=233  ctermfg=244

" ===========================================================
" ------------------------ 按键映射 -------------------------
" ===========================================================

" 自定义<leader>按键为空格
let mapleader = "\<space>"
let g:mapleader = "\<space>"

" Command模式
nnoremap             ; :

" CTRL键


" ---------------------- 基础配置 ----------------------

" 缩进
"nmap			 <tab> V>
"vmap			 <tab> >gv

" ESC
" noremap		<C-Z> <Esc>
" inoremap		<C-Z> <Esc>
" vnoremap		<C-Z> <Esc>

" 复制到剪贴板
noremap		<leader>c "+y
vnoremap	<leader>c "+y

" airline shift buffer 切换Buffer
nnoremap	  <s-tab> :bn                      <CR>
nnoremap<leader><tab> :bn                      <CR>

" 代码折叠
nnoremap    <leader>a za
nnoremap    <leader>n zn
nnoremap    <leader>m zm

" Save
nnoremap	       ss :w                       <CR>
nnoremap	<leader>w :w                       <CR>
nnoremap    <leader>q :wqa                     <CR>

" ---------------------- 移动光标 ----------------------
inoremap	    <C-h> <Left>
inoremap	    <C-j> <Down>
inoremap	    <C-k> <Up>
inoremap	    <C-l> <Right>
inoremap	    <C-d> <DELETE>

nnoremap	<leader>h 0
nnoremap	<leader>l $
nnoremap	<leader>j ^

" 窗口移动
nnoremap		<C-H> <C-F>
nnoremap        <C-J> <C-D>
nnoremap        <C-K> <C-U>
nnoremap		<C-L> <C-B>
nnoremap        <C-U> }
nnoremap		<C-I> {

" ---------------------- 窗口配置 ----------------------
" 切换窗口
" nnoremap	    <C-Y> <C-W><C-H>
nnoremap		<C-U> <C-W><C-J>
nnoremap	    <C-I> <C-W><C-K>
nnoremap	    <C-O> <C-W><C-L>

" 窗口大小控制
nmap		<leader>[ :resize +3               <CR>
nmap		<leader>] :resize -3               <CR>
nmap		<leader>- :vertical resize +3      <CR>
nmap		<leader>= :vertical resize -3      <CR>

" ---------------------- 插件控制 ----------------------
" NERDtree
nmap			 <F1> :NERDTreeToggle          <CR>
imap			 <F1> <Esc>:NERDTreeToggle     <CR>
nmap	    <leader>1 :NERDTreeToggle          <CR>

" Tagbar
nmap		     <F2> :TagbarToggle            <CR>
imap	         <F2> <Esc>:TagbarToggle       <CR>
nmap	    <leader>2 :TagbarToggle            <CR>

" Gundo时光机
nmap             <F3> :UndotreeToggle          <CR>
imap	         <F3> <Esc>:UndotreeToggle     <CR>
nmap	    <leader>3 :UndotreeToggle          <CR>

" Taglist
nmap		     <F4> :TlistToggle             <CR>
imap		     <F4> <Esc>:TlistToggle        <CR>
nmap        <leader>4 :TlistToggle             <CR>

" ALE检查
" nmap			 <F5> :ALELint                 <CR>
" imap			 <F5> <Esc>:ALELint            <CR>
" nmap		<leader>5 :ALELint                 <CR>

" GitGutter开关
nmap			 <F6> :GitGutterToggle         <CR>
imap			 <F6> <Esc>:GitGutterToggle    <CR>
nmap	    <leader>6 :GitGutterToggle         <CR>

" 对齐线
nmap			 <F7> :IndentGuidesToggle      <CR>
imap			 <F7> <Esc>:IndentGuidesToggle <CR>
nmap		<leader>7 :IndentGuidesToggle <CR>

" 删除所有行尾多余的空格
nmap			 <F8> :%s= *$==                <CR>
imap			 <F8> <Esc>:%s= *$==           <CR>
nmap		<leader>8 :%s= *$==                <CR>

" 高亮显示被搜索字串
nmap			 <F9> :set hls                 <CR>
imap			 <F9> <Esc>:set hls            <CR>
nmap		<leader>9 :set hls                 <CR>

" 取消字串的高亮
nmap			<F10> :nohl                    <CR>
imap			<F10> <Esc>:nohl               <CR>
nmap		<leader>0 :nohl                    <CR>

" Winmanager NERDtree | Taglist
nmap			<F12> :WMToggle                <CR>:set buftype=<CR>
imap			<F12> <Esc>:WMToggle           <CR>:set buftype=<CR>
nmap		<leader>\ :WMToggle                <CR>:set buftype=<CR>

" CtrlP
" 搜索当前目录下文件
nmap		<leader>f <C-P>
" 搜索MRU（Most Recently Used）文件
nmap		<leader>p :CtrlPMRUFiles<CR>
" 显示缓冲区文件，并可通过序号进行跳转
nmap		<Leader>v :CtrlPBuffer<CR>

" ALE
" 查看前一条/后一条信息
" nmap <silent> <leader>m, <Plug>(ale_previous_wrap)
" nmap <silent> <leader>m. <Plug>(ale_next_wrap)

" Python-mode
" 查看Python文档
nmap        <leader>k K
" 跳转至定义处
nmap        <leader>d <C-C>g
" 检查代码错误
nmap        <leader>e :PymodeLint			   <CR>
" 自动修复PEP8格式错误
nmap        <leader>t :PymodeLintAuto          <CR>

" NERDCommenter 自动标记
nmap		<leader>/ <leader>c<space>
vmap		<leader>/ <leader>c<space>

" YouCompeleteMe
" 离开插入模式后自动关闭预览窗口
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
" 回车即选中当前项
inoremap <expr> <CR>       pumvisible() ? "\<C-y>\<CR>" : "\<CR>"
"" 上下左右键的行为 会显示其他信息
inoremap <expr> <Down>	   pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>	   pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
" 跳转到定义处
" ”nnoremap <leader>s :YcmCompleter GoToDefinitionElseDeclaration<CR>

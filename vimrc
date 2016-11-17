"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Basic for vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'nginx.vim'
"Bundle 'csv.vim'
Plugin 'fatih/vim-go'
Plugin 'Raimondi/delimitMate' " auto complete paired items

"Bundle 'jdonaldson/vaxe' " for HAXE

" use to control git in vim
Bundle 'tpope/vim-fugitive'
" use to control montion in easiser way
Bundle 'Lokaltog/vim-easymotion'
" make wirte html more robust
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'mattn/emmet-vim'
Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
" only fix a bug under mac
"Bundle 'hlouis/FuzzyFinder'
"Bundle 'FuzzyFinder'
" Bundle 'kien/ctrlp.vim'
Bundle 'ctrlpvim/ctrlp.vim'
"Bundle 'SuperTab-continued.'
Bundle 'The-NERD-tree'
Bundle 'auto_mkdir'
"Bundle 'ShowMarks'

" use to auto detcet corrent file encoding
Bundle 'FencView.vim'
Bundle 'Mark'
Bundle 'The-NERD-Commenter'
Bundle 'restart.vim'
" show tag at right side
Bundle 'Tagbar'
Bundle 'css_color.vim'
" jump to head or source file for current buffer
Bundle 'a.vim'
Bundle 'EasyGrep'

" replace xptemplate with ultsnips
"Bundle 'xptemplate'
Bundle 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" follow https://github.com/plasticboy/vim-markdown to install markdown support
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" Bundle 'Lokaltog/vim-powerline'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"complete plugin
"Bundle 'Rip-Rip/clang_complete'
"Bundle 'rkowal/Lua-Omni-Vim-Completion'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'

" for auto generate tags
"Plugin 'xolox/vim-misc'
"Plugin 'xolox/vim-easytags'
"Plugin 'xolox/vim-session'

" lua
"Bundle 'xolox/vim-lua-ftplugin'
Bundle 'raymond-w-ko/vim-lua-indent'

" Make cd command only effect this tab
Bundle 'kana/vim-tabpagecd'

" syntax
Bundle 'actionscript.vim--Cuss'
Bundle 'cespare/vim-toml'
Bundle 'scons.vim'
Bundle 'leafgarland/typescript-vim'
Bundle 'haproxy'

" Color
Bundle 'desert256.vim'
Bundle 'desertEx'
Bundle 'Impact'
Bundle 'inkpot'
Bundle 'Wombat'
Bundle 'Son-of-Obisidian'
Bundle 'Zenburn'
Bundle 'twilight'
Bundle 'Solarized'
let g:solarized_contrast = 'high'
Bundle '29decibel/codeschool-vim-theme'
Bundle 'tomasr/molokai'
Bundle 'w0ng/vim-hybrid'
Bundle 'google/vim-colorscheme-primary'
Bundle 'NLKNguyen/papercolor-theme'
Bundle 'rakr/vim-two-firewatch'
let g:PaperColor_Light_Override = { 'background' : '#efefef' }

" for jade template language
Bundle 'digitaltoad/vim-jade'
" for css less
Bundle 'groenewege/vim-less'

filetype plugin indent on     " required! 
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=300

" set vim search tags file from current dir and up to the root
set tags=tags;/

" set formatoption:
set formatoptions=cqrnmB
set textwidth=80

" Enable filetype plugin
filetype on
filetype plugin on
filetype indent on
set modeline

" Set to auto read when a file is changed from the outside
set autoread

" Auto use relative line number when use quit insert mode
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" Fast editing of the .vimrc
if (has("win32") || has("win64") || has("win32unix"))
	map <leader>e :e! ~/vimfiles/vimrc<cr>
else
	map <leader>e :e! ~/.vim/vimrc<cr>
endif

" When vimrc is edited, reload it
if (has("win32") || has("win64") || has("win32unix"))
	autocmd! bufwritepost .vimrc source $VIM/vimfiles/vimrc
else
	autocmd! bufwritepost .vimrc source ~/.vim/vimrc
endif

" Sets what is saved when you save a session
set sessionoptions=blank,buffers,curdir,folds,help,resize,tabpages,winsize

set mouse=a " Enable the mouse
behave xterm
set selectmode=mouse

" Default size of window
if has("gui_running")
	set columns=120
	set lines=45
endif

" Test current OS
if (has("win32") || has("win64") || has("win32unix"))
	let g:isWin = 1
else
    let g:isWin = 0
endif

function! MySys()
    if (g:isWin)
        return "windows"
	endif

	if has("gui_macvim")
		return "mac"
	endif

	return "linux"
endfunction

" Put the cursor at the end when yanked
vmap y y`]

" set gui tab to [index], filename, modify flag
set guitablabel=\[%N\]\ %t\ %M

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the curors - when moving vertical..
set so=5
set wildmenu "Turn on WiLd menu
set ruler "Always show current position
set cmdheight=1 "The commandbar height
set hid "Change buffer - without saving

" Set backspace config
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set ignorecase "Ignore case when searching
set hlsearch "Highlight search things
set incsearch "Make search act like search in modern browsers
set magic "Set magic on, for regular expressions
set showmatch "Show matching bracets when text indicator is over them
set mat=2 "How many tenths of a second to blink

" No sound on errors
set noerrorbells
set visualbell
set t_vb=

" Window split
set equalalways " Multiple windows, when created, are equal in size
set splitbelow splitright

"Vertical split then hop to new buffer
:noremap <leader>v :vsp^M^W^W<cr>
:noremap <leader>h :split^M^W^W<cr>
set cursorline	"hightlight current line
"set cursorcolumn "hightlight current column

" set ESC to hide highlight in normal mode
":noremap <ESC> :nohl<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors Fonts and Encodings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable "Enable syntax hl

" Set font according to system
if MySys() == "mac"
	"set gfn=Andale\ Mono:h12
	"set gfn=Envy\ Code\ R:h12
	"set gfn=Menlo\ Regular:h12
	"set gfn=PT\ Mono:h13
	"set gfn=Sauce\ Code\ Powerline\ Light:h13
	set gfn=Sauce\ Code\ Powerline:h13

	"set gfn=M+\ 1m\ Regular:h14
	"set noantialias
	set shell=/bin/zsh

	" set input method more flow
	"set noimd
	"set imi=2
	"set ims=0
	
	" fix git pull git-sh-setup no such file bug
	set shell=/bin/bash\ -l

elseif MySys() == "windows"
	set gfn=Envy_Code_R:h10
elseif MySys() == "linux"
	set gfn=Envy\ Code\ R\ 10
	set shell=/bin/zsh
endif

if has("gui_running")
	"set guioptions-=TRrLl
	"set background=light
	"set t_Co=256
	set background=dark
	"colorscheme wombat
	"colorscheme molokai
	colorscheme PaperColor
	"colorscheme two-firewatch
	"colorscheme molokai
	"colorscheme hybrid
	"colorscheme sonofobsidian
	"colorscheme inkpot
	set nu
else
	colorscheme desert
	set background=dark
	set nonu
endif

" Set utf-8 is the default encoding
set fileencoding=utf-8
" set fileencodings=ucs-bom,utf-8,gbk,gb2312,latin1,default
if (g:isWin)
	let &termencoding=&encoding " under win32 encoding is cp936
	set fileencodings=ucs-bom,utf8,cp936,latin1
else
	set encoding=utf8
	set fileencodings=ucs-bom,utf8,gb2312,gb18030,latin1
endif
try
	lang en_US
catch
endtry

set ffs=unix,dos,mac "Default file types

"Change current buffer encoding to cp936 (default is utf-8)
nmap <leader>fcn :set fileencoding=cp936<CR>

" When macvim window close, lost the focus
"au VimLeave * maca hide:

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files and backups
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git anyway...
set nobackup
set nowb
set noswapfile

" To show current filetype use: set filetype
autocmd FileType html :set filetype=xhtml " we couldn't care less about html
autocmd BufNewFile,BufRead *.as :set filetype=actionscript " change as from altas to actionscript.
autocmd BufNewFile,BufRead *.dox :set filetype=doxygen " define dox file as doxygen file
autocmd BufNewFile,BufRead SConstruct :set filetype=scons " define scons

" set html and jade use space to indention
autocmd FileType html :setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType jade :setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType yaml :setlocal shiftwidth=2 tabstop=2 expandtab

" set haproxy config
au BufRead,BufNewFile haproxy* set ft=haproxy

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
autocmd BufReadPost *
			\ if line("'\"") > 0 && line("'\"") <= line("$") |
			\   exe "normal! g`\"" |
			\ endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set expandtab
set noexpandtab
set shiftwidth=4
set tabstop=4
set smarttab

set lbr
set tw=500

set ai "Auto indent
set si "Smart indet
set wrap "Wrap lines

map <leader>t2 :setlocal shiftwidth=2<cr>
map <leader>t4 :setlocal shiftwidth=4<cr>
map <leader>t8 :setlocal shiftwidth=8<cr>


""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Really useful!
"  In visual mode when you press * or # to search for the current selection
vnoremap <silent> * :call VisualSearch('f')<CR>
vnoremap <silent> # :call VisualSearch('b')<CR>

" When you press gv you vimgrep after the selected text
vnoremap <silent> gv :call VisualSearch('gv')<CR>
map <leader>g :vimgrep // **/*.<left><left><left><left><left><left><left>

function! CmdLine(str)
	exe "menu Foo.Bar :" . a:str
	emenu Foo.Bar
	unmenu Foo
endfunction 

" From an idea by Michael Naumann
function! VisualSearch(direction) range
	let l:saved_reg = @"
	execute "normal! vgvy"

	let l:pattern = escape(@", '\\/.*$^~[]')
	let l:pattern = substitute(l:pattern, "\n$", "", "")

	if a:direction == 'b'
		execute "normal ?" . l:pattern . "^M"
	elseif a:direction == 'gv'
		call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
	elseif a:direction == 'f'
		execute "normal /" . l:pattern . "^M"
	endif

	let @/ = l:pattern
	let @" = l:saved_reg
endfunction



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Command mode related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Smart mappings on the command line
cno $h e ~/
cno $d e ~/Desktop/
cno $j e ./
cno $c e <C-\>eCurrentFileDir("e")<cr>

" $q is super useful when browsing on the command line
cno $q <C-\>eDeleteTillSlash()<cr>

" Bash like keys for the command line
" Move
inoremap <C-a> <Home>
inoremap <C-e> <End>
"inoremap <C-k> <Up>
"inoremap <C-j> <Down>

" Ctrl enter, open new line above
inoremap <C-CR> <Esc><S-O>
" Shift enter, open new line blew
inoremap <S-CR> <End><CR>
inoremap <C-b> <Left>
inoremap <C-f> <Right>
inoremap <M-b> <C-o>b
inoremap <M-f> <C-o>w
" Rubout word / line and enter insert mode
" use <Esc><Right> instead of <C-o>
inoremap <C-w> <Esc><Right>cb
" delete
inoremap <C-u> <Esc><Right>c0
inoremap <C-k> <Esc><Right>C
inoremap <C-d> <Esc><Right>s
inoremap <M-d> <C-o>de

cnoremap <C-j> <Up>
cnoremap <C-k> <Down>

func! Cwd()
	let cwd = getcwd()
	return "e " . cwd 
endfunc

func! DeleteTillSlash()
	let g:cmd = getcmdline()
	if MySys() == "linux" || MySys() == "mac"
		let g:cmd_edited = substitute(g:cmd, "\\(.*\[/\]\\).*", "\\1", "")
	else
		let g:cmd_edited = substitute(g:cmd, "\\(.*\[\\\\]\\).*", "\\1", "")
	endif
	if g:cmd == g:cmd_edited
		if MySys() == "linux" || MySys() == "mac"
			let g:cmd_edited = substitute(g:cmd, "\\(.*\[/\]\\).*/", "\\1", "")
		else
			let g:cmd_edited = substitute(g:cmd, "\\(.*\[\\\\\]\\).*\[\\\\\]", "\\1", "")
		endif
	endif   
	return g:cmd_edited
endfunc

func! CurrentFileDir(cmd)
	return a:cmd . " " . expand("%:p:h") . "/"
endfunc


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <silent> <leader><cr> :noh<cr>

" Smart way to move btw. windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <C-C> <C-W>c

" Close the current buffer
map <leader>bd :Bclose<cr>

" Close all the buffers
map <leader>ba :1,300 bd!<cr>

" Use the arrows to something usefull
map <right> :bn<cr>
map <left> :bp<cr>

" Tab configuration
map <leader>tn :tabnew %<cr>
map <leader>te :tabedit 
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 
map <leader>t1 :tabnext 1<cr>
map <leader>t2 :tabnext 2<cr>
map <leader>t3 :tabnext 3<cr>
map <leader>t4 :tabnext 4<cr>
map <leader>t5 :tabnext 5<cr>
map <leader>t6 :tabnext 6<cr>

" switch tabs by tab and numbers
map <A-1> :tabnext 1<cr>
map <A-2> :tabnext 2<cr>
map <A-3> :tabnext 3<cr>
map <A-4> :tabnext 4<cr>
map <A-5> :tabnext 5<cr>
map <A-6> :tabnext 6<cr>
map <A-7> :tabnext 7<cr>
map <A-8> :tabnext 8<cr>
map <A-9> :tabnext 9<cr>
map! <A-1> <Esc>:tabnext 1<cr>
map! <A-2> <Esc>:tabnext 2<cr>
map! <A-3> <Esc>:tabnext 3<cr>
map! <A-4> <Esc>:tabnext 4<cr>
map! <A-5> <Esc>:tabnext 5<cr>
map! <A-6> <Esc>:tabnext 6<cr>
map! <A-7> <Esc>:tabnext 7<cr>
map! <A-8> <Esc>:tabnext 8<cr>
map! <A-9> <Esc>:tabnext 9<cr>

" switch tabs by tab and numbers by mac command key
if MySys() == "mac"
	map <D-1> :tabnext 1<cr>
	map <D-2> :tabnext 2<cr>
	map <D-3> :tabnext 3<cr>
	map <D-4> :tabnext 4<cr>
	map <D-5> :tabnext 5<cr>
	map <D-6> :tabnext 6<cr>
	map <D-7> :tabnext 7<cr>
	map <D-8> :tabnext 8<cr>
	map <D-9> :tabnext 9<cr>
	map! <D-1> <Esc>:tabnext 1<cr>
	map! <D-2> <Esc>:tabnext 2<cr>
	map! <D-3> <Esc>:tabnext 3<cr>
	map! <D-4> <Esc>:tabnext 4<cr>
	map! <D-5> <Esc>:tabnext 5<cr>
	map! <D-6> <Esc>:tabnext 6<cr>
	map! <D-7> <Esc>:tabnext 7<cr>
	map! <D-8> <Esc>:tabnext 8<cr>
	map! <D-9> <Esc>:tabnext 9<cr>

	map <D-0> :tablast<cr>
	map <D-]> gt
	map <D-[> gT
endif

" When pressing <leader>cd switch to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>

command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
	let l:currentBufNum = bufnr("%")
	let l:alternateBufNum = bufnr("#")

	if buflisted(l:alternateBufNum)
		buffer #
	else
		bnext
	endif

	if bufnr("%") == l:currentBufNum
		new
	endif

	if buflisted(l:currentBufNum)
		execute("bdelete! ".l:currentBufNum)
	endif
endfunction

" Specify the behavior when switching between buffers 
try
	set switchbuf=usetab
	set stal=2
catch
endtry


""""""""""""""""""""""""""""""
" => Statusline
""""""""""""""""""""""""""""""
" Always hide the statusline
set laststatus=2
set showcmd
" Format the statusline
"set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c

function! CurDir()
	let curdir = substitute(getcwd(), $HOME, "~/", "g")
	return curdir
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Parenthesis/bracket expanding
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vnoremap <leader>( <esc>`>a)<esc>`<i(<esc>
vnoremap <leader>[ <esc>`>a]<esc>`<i[<esc>
vnoremap <leader>{ <esc>`>a}<esc>`<i{<esc>
vnoremap <leader>" <esc>`>a"<esc>`<i"<esc>
vnoremap <leader>' <esc>`>a'<esc>`<i'<esc>

" Map auto complete of (, ", ', [
inoremap <leader>( ()<esc>i
inoremap <leader>[ []<esc>i
inoremap <leader>{ {}<esc>i
inoremap <leader>} {<esc>o}<esc>O
inoremap <leader>' ''<esc>i
inoremap <leader>" ""<esc>i


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General Abbrevs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iab idate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>
iab isign <c-r>="Louis @ " . strftime("%a %d %b %Y")

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Remap VIM 0
map 0 ^

"Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if MySys() == "mac"
	nmap <D-j> <M-j>
	nmap <D-k> <M-k>
	vmap <D-j> <M-j>
	vmap <D-k> <M-k>
endif

"Delete trailing white space, useful for Python ;)
func! DeleteTrailingWS()
	exe "normal mz"
	%s/\s\+$//ge
	exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()

" Professor VIM says '87% of users prefer jj over esc', jj abrams strongly disagrees
" imap jj <Esc>
" awesome, inserts new line without going into insert mode
map <C-Enter> O<ESC>
map <S-Enter> o<ESC>

" Move cursor in command line mode more like terminal
cnoremap <C-a>  <Home>
cnoremap <C-b>  <Left>
cnoremap <C-f>  <Right>
cnoremap <C-d>  <Delete>
cnoremap <M-b>  <S-Left>
cnoremap <M-f>  <S-Right>
cnoremap <M-d>  <S-right><Delete>
cnoremap <Esc>b <S-Left>
cnoremap <Esc>f <S-Right>
cnoremap <Esc>d <S-right><Delete>

" Move cursor to line end or begin in insert mode
imap <C-e> <esc>$a
imap <C-a> <esc>$I

" Move cursor in wrap line
nnoremap j gj
nnoremap k gk

" Make cursor move by visual lines instead of file lines (when wrapping)
"map <up> gk
"imap <up> <C-o>gk
"map <down> gj
"imap <down> <C-o>gj
"map E ge
"map k gk
"map j gj

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Cope
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Do :help cope if you are unsure what cope is. It's super useful!
map <leader>qc :botright cope<cr>
map <leader>qn :cn<cr>
map <C-n> :cn<cr>
map <C-p> :cp<cr>

""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1


""""""""""""""""""""""""""""""
" => Minibuffer plugin
""""""""""""""""""""""""""""""
let g:miniBufExplModSelTarget = 1
let g:miniBufExplorerMoreThanOne = 2
let g:miniBufExplModSelTarget = 0
let g:miniBufExplUseSingleClick = 1
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplVSplit = 25
let g:miniBufExplSplitBelow=1

let g:bufExplorerSortBy = "name"

autocmd BufRead,BufNew :call UMiniBufExplorer

map <leader>u :TMiniBufExplorer<cr>:TMiniBufExplorer<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

"Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

""""""""""""""""""""""""""""""
" => Protobuf text section
""""""""""""""""""""""""""""""
au! BufNewFile,BufRead *.proto setfiletype proto

""""""""""""""""""""""""""""""
" => Restructure text section
""""""""""""""""""""""""""""""
au BufNewFile,BufRead *.rest set syntax=rest
au BufNewFile,BufRead *.rest set ft=rest

""""""""""""""""""""""""""""""
" => Python section
""""""""""""""""""""""""""""""
au FileType python set nocindent
let python_highlight_all = 1
au FileType python syn keyword pythonDecorator True None False self

au BufNewFile,BufRead *.jinja set syntax=htmljinja
au BufNewFile,BufRead *.mako set ft=mako

au FileType python inoremap <buffer> $r return 
au FileType python inoremap <buffer> $i import 
au FileType python inoremap <buffer> $p print 
au FileType python inoremap <buffer> $f #--- PH ----------------------------------------------<esc>FP2xi
au FileType python map <buffer> <leader>1 /class 
au FileType python map <buffer> <leader>2 /def 
au FileType python map <buffer> <leader>C ?class 
au FileType python map <buffer> <leader>D ?def 


""""""""""""""""""""""""""""""
" => JavaScript section
"""""""""""""""""""""""""""""""
au FileType javascript call JavaScriptFold()
au FileType javascript setl fen
au FileType javascript setl nocindent

au FileType javascript imap <c-t> AJS.log();<esc>hi
au FileType javascript imap <c-a> alert();<esc>hi

au FileType javascript inoremap <buffer> $r return 
au FileType javascript inoremap <buffer> $f //--- PH ----------------------------------------------<esc>FP2xi

function! JavaScriptFold() 
	setl foldmethod=syntax
	setl foldlevelstart=1
	syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

	function! FoldText()
		return substitute(getline(v:foldstart), '{.*', '{...}', '')
	endfunction
	setl foldtext=FoldText()
endfunction

" => Function use to toggle Flascc development "

let FLASCC_ROOT="/Users/louis/Develop/sdk/flashcc/sdk"
function! IntoFlascc()
	set path=.,../include,./include,/Users/louis/Develop/sdk/flashcc/sdk/usr/include,/Users/louis/Develop/sdk/flashcc/sdk/usr/include/c++/4.2.1
endfunction

""""""""""""""""""""""""""""""
" => Vim grep
""""""""""""""""""""""""""""""
let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated .git'
"set grepprg=/bin/grep\ -nH
"let g:ackprg = 'ag --vimgrep'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => MISC
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>rm mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" -----------------------------------------------------------------------------  
" |                              Pluggins                                     |
" -----------------------------------------------------------------------------  
"
" XPTemplate ******************************************************************
"let g:xptemplate_always_show_pum = 1
" xpt uses <Tab> as trigger key
"let g:xptemplate_key = '<Tab>'
" if nothing matched in xpt, try supertab
let g:xptemplate_fallback = '<Plug>SuperTabForward'
let g:xptemplate_highlight = 'following,next'
"let g:xptemplate_bundle = 'c_*,cpp_*' 
let g:xptemplate_brace_complete = 1
let g:xptemplate_pum_tab_nav = 1

" Omni Completion *************************************************************
" http://www.vim.org/scripts/script.php?script_id=1520
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType html :set omnifunc=htmlcomplete#CompleteTags
"autocmd FileType python set omnifunc=pythoncomplete#Complete
"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
"autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

" NERTCommenter
"let NERD_c_alt_style=1
"let NERD_cpp_alt_style=1


" NERDTree ********************************************************************
" http://www.vim.org/scripts/script.php?script_id=1658
" ver 4.1.0
let g:NERDTreeIgnore=['\~$', '\.meta$', '\.lo$', '\.o$', '^tags$', '\.dSYM$', 'cscope\.', '^.*_temp$', '\.DS_Store$', '\.pyc$', '\.git$[[dir]]']
let g:NERDTreeWinPos="left"
let g:NERDTreeShowBookmarks=1
let g:NERDTreeShowHidden=1

function! NERDTreeCurrentDir()
	let s:cwd = getcwd()
	execute "NERDTree " . s:cwd
endfunction

nnoremap <silent> <leader>nt :NERDTreeToggle<CR>
nnoremap <silent> <leader>nc :call NERDTreeCurrentDir()<CR>
nnoremap <silent> <leader>nf :NERDTreeFind<CR>

" Tag List ********************************************************************
" http://www.vim.org/scripts/script.php?script_id=273
" ver 4.5
let Tlist_Show_One_File = 1
let Tlist_Use_Right_Window = 1
nnoremap <silent> <F6> :TlistToggle<CR>

" Snip Mate **************************************************************
" http://www.vim.org/scripts/script.php?script_id=2540
" ver 0.83
let g:snips_author = "Louis Huang"
let g:snips_company = "XY3D"
let g:snips_email = "hly@xy3d.mobi"

function! ReloadSnippets( snippets_dir, ft )
	if strlen( a:ft ) == 0
		let filetype = "_"
	else
		let filetype = a:ft
	endif

	call ResetSnippets()
	call GetSnippets( a:snippets_dir, filetype )
endfunction

nmap <silent> <leader>sr :call ReloadSnippets(snippets_dir, &filetype)<CR>

" Fuzzyfinder *****************************************************************
" http://www.vim.org/scripts/script.php?script_id=1984
" ver 3.5
"let g:fuf_modesDisable = [ ]
"let g:fuf_buffertag_ctagsPath = '/opt/local/bin/ctags'
"let g:fuf_previewHeight = 0		" disable preview
"let g:fuf_keyPreview = '<C-]>'
"map <leader>ff :FufFile<CR>
"map <leader>fc :FufCoverageFile<CR>
"map <leader>fb :FufBuffer<CR>
"map <leader>ft :FufBufferTag<CR>
"map <leader>fat :FufTag<CR>
"map <leader>fm :FufMruFile<CR>

"try
	"call fuf#defineLaunchCommand('FufCWD', 'file', 'fnamemodify(getcwd(), ''%:p:h'')')
	"map <leader>ft :FufCWD **/<CR>
"catch
"endtry

" autocomplpop ***************************************************************
" http://www.vim.org/scripts/script.php?script_id=1879
" ver 2.14.1
let g:acp_enableAtStartup = 1
let g:acp_ignorecaseOption = 1
let g:acp_mappingDriven = 1

" a.vim **********************************************************************
let g:alternateSearchPath = 'sfr:../source,sfr:../src,sfr:../include,sfr:../inc,sfr:../../head/core:../sdk:../head'

" EasyGrep ********************************************************************
let g:EasyGrepMode = 2
" use mac grep with easygrep
set grepprg=grep\ -nH\ $*
let g:EasyGrepCommand = 1
let g:EasyGrepRecursive = 1
let g:EasyGrepSearchCurrentBufferDir = 0

" minibufexpl ****************************************************************
let g:miniBufExplSplitBelow = 0 " mini buf window will apear above.
let g:miniBufExplMapCTabSwitchBufs = 1 " use C-Tab and C-S-Tab to switch bufs.
let g:miniBufExplModSelTarget = 1 " Don't put buf in nonmodifiable window.
let g:miniBufExplMinSize = 1 " at least display 1 line.
let g:miniBufExplMaxSize = 2 " max display 2 line.

" surround   ****************************************************************
" http://www.vim.org/scripts/script.php?script_id=1697
" ver: 1.90

" tagbar     ****************************************************************
let g:tagbar_ctags_bin = '/usr/local/bin/ctags'
let g:tagbar_autoshowtag = 1
let g:tagbar_autofocus = 1
nnoremap <leader>to :TagbarOpen<CR>
nnoremap <leader>tt :TagbarToggle<CR>
nnoremap <leader>ta :TagbarOpenAutoClose<CR>

let g:tagbar_type_javascript = {
    \ 'ctagstype' : 'JavaScript',
    \ 'kinds'     : [
        \ 'o:objects',
        \ 'f:functions',
        \ 'a:arrays',
        \ 's:strings'
    \ ]
\ }

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

" supertab 	 ****************************************************************
" http://www.vim.org/scripts/script.php?script_id=1643
" ver: 1.0
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType = "<c-j>"

" tabular *******************************************************************
" map some usefule tabularize with = and :
nmap <leader>a= :Tabularize /=<CR>
vmap <leader>a= :Tabularize /=<CR>
nmap <leader>a: :Tabularize /:\zs<CR>
vmap <leader>a: :Tabularize /:\zs<CR>

" vim-powerline
"let g:Powerline_symbols = 'unicode'
let g:Powerline_symbols = 'compatible'
"let g:Powerline_theme = 'solarized256'
"let g:Powerline_colorscheme = 'solarized256'

" csv.vim
" auto range line from 3 to end of file
"aug CSV_Editing
	"au!
	"au BufRead,BufWritePost *.csv :3,$ArrangeColumn
	"au BufWritePre *.csv :%UnArrangeColumn
"aug end
"let g:csv_highlight_column = 'y'

" clang complete ************************************************************
" hightlight error for warnings and errors
"let g:clang_hl_errors = 1
" open quick fix window on error
"let g:clang_complete_copen = 1
" make function parentheses/paramters complete
"let g:clang_snippets = 1
"let g:clang_snippets_engine = 'clang_complete'

set conceallevel=2
set concealcursor=inv
"let g:clang_snippets=1
"let g:clang_conceal_snippets=1
" The single one that works with clang_complete
"let g:clang_snippets_engine='clang_complete'
"let g:clang_trailing_placeholder=1

" Complete options (disable preview scratch window, longest removed to aways
" show menu)
"set completeopt=menu,longest
set completeopt=menu,menuone

" Limit popup menu height
"set pumheight=20

" SuperTab completion fall-back 
"let g:SuperTabDefaultCompletionType='<c-x><c-u><c-p>'

" YouCompleteMe *************************************************************
"let g:ycm_key_invoke_completion = '<leader><tab>'

" syntastic *****************************************************************
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_always_populate_loc_list = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_lua_luac_exec = "luac5.3"

" ultsnips ******************************************************************
let g:UltiSnipsEditSplit='vertical'
"let g:UltiSnipsSnippetsDir="~/.vim/bundle/ultisnips/UltiSnips"
"let g:UltiSnipsSnippetDirectories=["UltiSnips"]

let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" CtrlP *********************************************************************
let g:ctrlp_map = '<Leader>ff'
let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|so|blend|meta)$|(^|[/\\])\.(hg|git|bzr|dSYM)($|[/\\])|__init__\.py'
" don't use nearest git root dir for searching dir
let g:ctrlp_working_path_mode = 'w'
let g:ctrlp_dotfiles = 0
let g:ctrlp_switch_buffer = 0
let g:ctrlp_max_height = 15
let g:ctrlp_extensions = ['tag', 'buffertag', 'mixed', 'bookmarkdir']
let g:ctrlp_regexp = 1

" The Silver Searcher
if executable('ag')
	" Use ag over grep
	"set grepprg=ag\ --nogroup\ --nocolor

	" Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
	let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

	" ag is fast enough that CtrlP doesn't need to cache
	let g:ctrlp_use_caching = 0
endif

map <leader>fb :CtrlPBuffer<CR>
map <leader>ft :CtrlPBufTag<CR>
map <leader>fa :CtrlPTag<CR>
map <leader>fm :CtrlPMRUFiles<CR>

" set actionscript ctags param
let g:ctrlp_buftag_types = {
			\ 'erlang'     : '--language-force=erlang --erlang-types=drmf',
			\ 'go' : '--language-force=go --golang-types=ftv',
			\ }

" vim-markdown **************************************************************
let g:vim_markdown_folding_disabled=1
autocmd FileType markdown :set conceallevel=0 " we dont want to hide link text

" vim-easytags **************************************************************
" Let easytags use project's tags file
let g:easytags_dynamic_files = 1
let g:easytags_async = 1

" sparkup *******************************************************************
"let g:sparkupExecuteMapping='<D-e>'
"let g:sparkupNextMapping='<D-r>'

" vim-ft-lua ****************************************************************
"let g:lua_compiler_name = '/opt/local/bin/luac'

" vim-go ********************************************************************
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

" vim-airline
if has("gui_running")
	let g:airline_powerline_fonts = 1
endif
"let g:airline_theme='papercolor'
let g:airline_theme='luna'

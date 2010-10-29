filetype plugin on  " Automatically detect file types.
set history=1000
set nocompatible  " We don't want vi compatibility
set clipboard+=unnamed  " Yanks go on clipboard instead.
set autowrite  " Writes on make/shell commands
set ruler  " Ruler on
set nu  " Line numbers on
set nowrap  " Line wrapping off
set timeoutlen=250  " Time to wait after ESC (default causes an annoying delay)
set ts=2  " Tabs are 2 spaces
set bs=2  " Backspace over everything in insert mode
set shiftwidth=2  " Tabs under smart indent
set incsearch "set incremenetal search
set formatoptions=q
set showmatch  " Show matching brackets.
set mat=5  " Bracket blinking.
autocmd BufWinEnter * set foldlevel=999999
set lcs=tab:\ \ ,trail:~,extends:>,precedes:<
set novisualbell  " No blinking .
set noerrorbells  " No noise.
set laststatus=2  " Always show status line.
 
" gvim specific
set mousehide  " Hide mouse after chars typed
set mouse=a  " Mouse in all modes
colorscheme neon
set tags=./tags;/



let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 50
map <F4> :TlistToggle<cr>
set wmh=0




"Custom mappings
nmap <Leader>s :source /home/adrian/.gvimrc<CR>
nnoremap <silent> <C-s> :mksession!<CR>


" GENERAL
imap { {}<left>
imap ( ()<left>
imap [ []<left>
imap ;< <% %><left><left><left>

" RAILS SPECIFIC
imap ;vp validates_presence_of :
imap ;bf before_filter :
nnoremap @R IRAILS_DEFAULT_LOGGER.spark <ESC>A.inspect
nnoremap @F Idef <ESC>oend<ESC>O<tab>
nnoremap @E vbyA.each do <BAR><ESC>pxa<BAR><ESC>oend<ESC>O<tab>


" JAVA SPECIFIC

set sm
set ai
syntax on
let java_highlight_all=1
let java_highlight_functions="style"
let java_allow_cpp_keywords=1

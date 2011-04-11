filetype plugin on  " Automatically detect file types.
set history=1000
set nocompatible  " We don't want vi compatibility
set clipboard+=unnamed  " Yanks go on clipboard instead.
set autowrite  " Writes on make/shell commands
set ruler  " Ruler on
set nu  " Line numbers on
set nowrap  " Line wrapping off
set timeoutlen=250  " Time to wait after ESC (default causes an annoying delay)
set bs=2  " Backspace over everything in insert mode
set incsearch "set incremenetal search
set formatoptions=q
set showmatch  " Show matching brackets.
set mat=2  " Bracket blinking.
autocmd BufWinEnter * set foldlevel=999999
set lcs=tab:\ \ ,trail:~,extends:>,precedes:<
set novisualbell  " No blinking .
set noerrorbells  " No noise.
set laststatus=2  " Always show status line.

set hidden

let mapleader = "," 

" auto-completion settings
set wildmenu
set wildmode = "list:longest"
inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
\ "\<lt>C-n>" :
\ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
\ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
\ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>

"store .swp files in a central directory
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" gvim specific
set mousehide  " Hide mouse after chars typed
set mouse=a  " Mouse in all modes
colorscheme neon


let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 50
set wmh=0



"Custom mappings
nmap <Leader>s :source /home/adrian/.gvimrc<CR>
nmap <tab><tab> :NERDTreeToggle<CR>
map <F4> :TlistToggle<cr>
noremap <silent> <C-s> <Esc>:w<CR>


" GENERAL
imap { {}<left>
imap ( ()<left>
imap [ []<left>
imap ;< <% %><left><left><left>

" spelling correction abbreviations
iab prodcut product
iab cotent content
iab cotnet content
iab cotnent content
iab ned end
iab nde	end




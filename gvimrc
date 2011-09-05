filetype plugin on  " Automatically detect file types.
set history=1000
set nocompatible  " We don't want vi compatibility
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

set gfn=Monaco\ 10

set ts=2  " Tabs are 2 spaces
set shiftwidth=2  " Tabs under smart indent
set smarttab
set expandtab
set autoindent

set showcmd

nnoremap <C-p> "+p

let mapleader = "," 

" Tab contols, open, new, close and jump keys
map to <Esc>:browse tabnew<CR> 
map tn <Esc>:tabnew<CR>
map tc <Esc>:tabclose<CR>
map <F9> :tabfirst<CR>
map <F10> :tabp<CR>
map <F11> :tabn<CR>
map <F12> :tablast<CR>

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


let g:clipbrdDefaultReg = '+'

let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 50
let Tlist_Use_Right_Window = 1
set wmh=0

" hashrockets made easy
imap <C-l> <Space>=><Space>

imap { {}<left>
imap [ []<left>
imap ( ()<left>

imap jj <Esc>

"Custom mappings
nmap <Leader>s :source /home/adrian/.gvimrc<CR>
nmap <tab><tab> :NERDTreeToggle<CR>
map <F4> :TlistToggle<cr>
noremap <silent> <C-s> <Esc>:w<CR>

" spelling correction abbreviations
iab prodcut product
iab cotent content
iab cotnet content
iab cotnent content
iab ned end
iab nde	end

map <right> <Nop>
map <up> <Nop>
map <left> <Nop>
map <down> <Nop>

nnoremap ,, <S-a>,<ESC>,

nnoremap <C-p>c <Esc>:FindControllers<CR>
nnoremap <C-p>cs <Esc>:FindControllersSpec<CR>
nnoremap <C-p>m <Esc>:FindModels<CR>
nnoremap <C-p>ms <Esc>:FindModelsSpec<CR>

source ~/vim_config/custom.vim

"Commands
command! Bashrc call EditBashrc()
command! Gvimrc call EditGvimrc()


"Fuzzy finder stuff
command! FindControllers call fuf#setOneTimeVariables(['g:fuf_coveragefile_globPatterns', ['app/controllers/*.rb', 'vendor/plugins/**/app/controllers/*.rb', 'vendor/plugins/**/app/controllers/**/*.rb']]) 
      \ | FufCoverageFile 

command! FindModels call fuf#setOneTimeVariables(['g:fuf_coveragefile_globPatterns', ['app/models/*.rb', 'vendor/plugins/**/app/models/*.rb']]) 
      \ | FufCoverageFile 

command! FindControllersSpec call fuf#setOneTimeVariables(['g:fuf_coveragefile_globPatterns', ['spec/controllers/*.rb']]) 
      \ | FufCoverageFile

command! FindModelsSpec call fuf#setOneTimeVariables(['g:fuf_coveragefile_globPatterns', ['spec/models/*.rb']]) 
      \ | FufCoverageFile

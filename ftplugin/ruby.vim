set ts=2  " Tabs are 2 spaces
set shiftwidth=2  " Tabs under smart indent


imap ;vp validates_presence_of :
imap ;bf before_filter :
nnoremap <C-e> oend<ESC>O<TAB>

iab logger RAILS_DEFAULT_LOGGER.spark
iab ins inspect
iab <% <% %><left><left><left>

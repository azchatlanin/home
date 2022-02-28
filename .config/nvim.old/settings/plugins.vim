call plug#begin('~/.config/nvim/autoload/plugged')
  
" Airline
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

" This repository contains snippets files for various programming languages.
  Plug 'honza/vim-snippets'

" Themas
  Plug 'joshdick/onedark.vim'

" Easy motion search
  Plug 'easymotion/vim-easymotion'

" Pasting in Vim with indentation adjusted to destination context.
  Plug 'sickill/vim-pasta'
  
" css-color
  Plug 'ap/vim-css-color'
  
" c++
  Plug 'bfrg/vim-cpp-modern'
  
" auto-save
  Plug '907th/vim-auto-save'

" NERDtree
  Plug 'preservim/nerdtree'

" vim-session
  Plug 'xolox/vim-session'

" vim-misc for need vim session
  Plug 'xolox/vim-misc'

" vim go
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" meson
  Plug 'stfl/meson.vim'

" wiki
 Plug 'vimwiki/vimwiki'

call plug#end()

colorscheme onedark

syntax on                                  " включает подсветку
syntax sync fromstart
set nocompatible
filetype plugin on

set lazyredraw                             " не переррисовывать все время https://stackoverflow.com/questions/9341768/vim-response-quite-slow/55501120#55501120
set synmaxcol=512                          " макс длина линий для подсветки   
set regexpengine=1                         " новый движок регулярных выражений
set hidden                                 " вы можете иметь незаписанные изменения в файле и открывать новый файл с помощью :e, без необходимости предварительно записывать или отменять свои изменения
set nowrap                                 " не переносить длинные линии
set encoding=utf-8                         " кодировка
set pumheight=10                           " максимальное количество элементов, отображаемых во всплывающем меню для
set ruler              			               " показывать курсор все время
set cmdheight=2                            " количество экранных строк для использования в командной строке
set iskeyword+=-                      	   " рассматривайте слова, разделенные тире, как текстовый объек
set mouse=a                                " определят ьмыш
set splitbelow                             " горизонтальное разделение идет ниже
set splitright                             " вертикально разделение идет вправо
set t_Co=256                               " поддержка цвета
set conceallevel=0                         " скрытый уровень отключен и текст в `` можно видеть
set tabstop=2                              " tab
set shiftwidth=2                           " возможно это и есть отступ при сдвиге ПРОВЕРИТЬ !!!
set smarttab                               " делает отступы в зависимости от expandtab. так в док. написано.
set expandtab                              " превращает tabs в spaces
set smartindent                            " делает умный автоотступ
set autoindent                             " автоотступ
set laststatus=0                           " что то связанное  со статусной строкой ПРОВЕРИТЬ !!!
set number                                 " показывать номера строк
set cursorline                             " показывать срокку под курсором
set showtabline=2                          " всегда показывать вкладки
set backspace=2                            " исправляет поведение backspace на большинстве терминалов.
set updatetime=300                         " быстрое завершение
set timeoutlen=500                         " поумолчанию timeoutlen 1000 ms
set formatoptions-=cro                     " последовательность букв, описывающая, как автоматически форматирование должно быть выполнено.
set clipboard+=unnamedplus                  " копирование вставка между vim и всем остальным
set autochdir                              " рабочий каталог всегда будет таким же, как и ваш рабочий каталог
set directory=$HOME/.local/share/nvim/swap " устанавливает место для файлов подкачки
set termguicolors                          " поддержку полноцветных
set noswapfile                             " не создавать swap files
set scrolloff=24                           " начинать скролить за 24 строк до конца экрана
set colorcolumn=320                        " граница кода (черта вертикальная)
set noshowmode                             " We don't need to see things like -- INSERT -- anymore

set foldmethod=manual                      " For fold code blocks
set foldnestmax=10
set nofoldenable
set foldlevel=2

let g:auto_save = 1                                       " включаем AutoSave

let mapleader = "\<space>"
nnoremap <silent> <C-L> :nohlsearch<CR><C-L> " снять выделение результата поиска


"=============================================================================================================================================================
" Airline Settings
" enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
" enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''
" switch to your current theme
let g:airline_theme = 'onedark'

let g:airline#extensions#tabline#formatter = 'short_path' " короткий буть в именах буфера
"=============================================================================================================================================================
" C++ highlights
let g:cpp_no_function_highlight = 1
let g:cpp_attributes_highlight = 1
let g:cpp_member_highlight = 1
let g:cpp_simple_highlight = 1

"=============================================================================================================================================================
" OneDark Settings
hi Comment cterm=italic
let g:onedark_hide_endofbuffer=1
let g:onedark_terminal_italics=1
let g:onedark_termcolors=256
highlight Normal guibg=none
highlight NonText guibg=none
"=============================================================================================================================================================
" sesstion dir
let g:session_directory='/mnt/store/home/.config/nvim/session'

"=============================================================================================================================================================
" wiki path
let g:vimwiki_list = [{ 'path': '/mnt/store/Store.Disk/Notes' }]

"=============================================================================================================================================================
" NERDtree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>
highlight link NERDTreeExecFile ModeMsg
let NERDTreeShowHidden=1
let g:NERDTreeWinSize=50

"=============================================================================================================================================================
" move when edit
inoremap jk <esc>
inoremap <a-h> <esc>ha
inoremap <a-j> <esc>ja
inoremap <a-l> <esc>la
inoremap <a-k> <esc>ka
inoremap <a-d> <esc>dda

"=============================================================================================================================================================
" move buffer
nnoremap <a-j> :bprevious<CR>
nnoremap <a-k> :bnext<CR>

"=============================================================================================================================================================
" go to settings
nnoremap <leader>map :vsplit /mnt/store/home/.config/nvim/settings/mapping.vim<CR>
nnoremap <leader>set :vsplit /mnt/store/home/.config/nvim/settings/settings.vim<CR>
nnoremap <leader>plug :vsplit /mnt/store/home/.config/nvim/settings/plugins.vim<CR>

"=============================================================================================================================================================
" wrapper in ""
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel " заключить слово в ковычки

"=============================================================================================================================================================
" open wiki
:nmap <Leader>wiki <Plug>VimwikiIndex


let g:plug_timeout = 100                                  " задержка YouCompleteMe

-- :help options
vim.opt.lazyredraw 	                = true 			                        -- не переррисовывать все время https://stackoverflow.com/questions/9341768/vim-response-quite-slow/55501120#55501120
vim.opt.synmaxcol 	                = 1024 			                        -- макс длина линий для подсветки
vim.opt.regexpengine 	              = 1 			                          -- новый движок регулярных выражений
vim.opt.pumheight 	                = 10                                -- pop up menu height
vim.opt.wrap 		                    = false                             -- display lines as one long line
vim.opt.ruler 		                  = true                              -- показывать курсор все время
vim.opt.cmdheight 	                = 2                                 -- количество экранных строк для использования в командной строке
vim.opt.mouse 		                  = "a"                               -- allow the mouse to be used in neovim
vim.opt.splitbelow 	                = true                              -- горизонтальное разделение идет ниже
vim.opt.splitright 	                = true                              -- вертикально разделение идет вправо
vim.opt.cmdheight 	                = 2                                 -- количество экранных строк для использования в командной строке
vim.opt.conceallevel 	              = 0                                 -- скрытый уровень отключен и текст в `` можно видеть
vim.opt.tabstop 	                  = 2                                 -- insert 2 spaces for a tab
vim.opt.shiftwidth 	                = 2                                 -- the number of spaces inserted for each indentation
vim.opt.expandtab 	                = true                              -- convert tabs to spaces
vim.opt.smarttab 	                  = true                              -- делает отступы в зависимости от expandtab. так в док. написано.
vim.opt.smartindent 	              = true                              -- делает умный автоотступ (make indenting smarter again)
vim.opt.autoindent 	                = true                              -- автоотступ
vim.opt.laststatus 	                = 0                                 -- что то связанное  со статусной строкой TODO: ПРОВЕРИТЬ !!!
vim.opt.number 		                  = true                              -- set numbered lines
vim.opt.cursorline 	                = true                              -- highlight the current line
vim.opt.showtabline 	              = 2                                 -- always show tabs
vim.opt.backspace 	                = "indent,eol,start"                -- исправляет поведение backspace на большинстве терминалов.
vim.opt.updatetime 	                = 300                               -- faster completion (4000ms default)
vim.opt.timeoutlen  	              = 500                               -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.clipboard 	                = "unnamedplus"                     -- копирование вставка между vim и всем остальным (allows neovim to access the system clipboard)
vim.opt.autochdir 	                = true         		                  -- рабочий каталог всегда будет таким же, как и ваш рабочий каталог
vim.opt.termguicolors	              = true                              -- set term gui colors (most terminals support this)
vim.opt.swapfile 	                  = false                             -- creates a swapfile
vim.opt.scrolloff 	                = 12                                -- начинать скролить за 33 строк до конца экрана
vim.opt.colorcolumn 	              = "320"                             -- граница кода (черта вертикальная)
vim.opt.showmode 	                  = false                             -- we don't need to see things like -- INSERT -- anymore
vim.opt.foldnestmax	                = 10                                -- устанавливает максимальное вложение складок
vim.opt.foldlevel	                  = 2                                 -- Устанавливает уровень сворачивания: складки с более высоким уровнем будут закрыты. Установка этого параметра на ноль закроет все складки . Чем больше число, тем меньше складок .
vim.opt.completeopt                 = { "menuone", "noselect" }         -- всплывающее меню для отображения возможных вариантов завершения.
vim.opt.ignorecase                  = true                              -- игнорировать регистр в шаблонах поиска.
vim.opt.smartcase                   = true                              -- переопределять значение «IGNORECASE» вариант, если поиск шаблон содержит верхний регистра символов. Используется только при вводе шаблона поиска
vim.opt.writebackup                 = false                             -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.opt.relativenumber              = false                             -- set relative numbered lines
vim.opt.signcolumn                  = "yes:1"                           -- always show the sign column, otherwise it would shift the text each time
vim.opt.pumblend                    = 50                                -- transparent menu
vim.opt.winblend                    = 5                                 -- transparent popup

--vim.opt.shortmess:append "c"
vim.opt.shortmess:append {c = true}
--vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.opt.whichwrap:append {['<'] = true, ['>'] = true, [','] = true, h = true, l = true}

vim.cmd [[set iskeyword+=-]]                                            -- рассматривайте слова, разделенные тире, как текстовый объект
vim.cmd [[set formatoptions-=cro]]                                      -- последовательность букв, описывающая, как автоматически форматирование должно быть выполнено. TODO: this doesn't seem to work
vim.cmd [[set shada="NONE"]]                                            -- не читает из глобального хранилища переменных. метки не сохраняются между сессиями
vim.cmd [[set relativenumber]]

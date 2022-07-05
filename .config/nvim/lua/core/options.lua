local disabled_plagins = require("plugins.disabled")
local opt = vim.opt
local cmd = vim.cmd
local g = vim.g

-- количество экранных строк для использования в командной строке
opt.cmdheight = 1

-- копирование вставка между vim и всем остальным (allows neovim to access the system clipboard)
opt.clipboard = "unnamedplus"

-- количество пробелов, вставленных для каждого отступа
opt.shiftwidth = 2

-- конвертирование табы в space
opt.expandtab = true

-- делает умный автоотступ (make indenting smarter again)
opt.smartindent = true

-- игнорировать регистр в шаблонах поиска.p
opt.ignorecase = true

-- переопределять значение «IGNORECASE» вариант, если поиск шаблон содержит верхний регистра символов. Используется только при вводе шаблона поиска
opt.smartcase = true

-- разрешает использование мыши
opt.mouse = "a"

-- устанавливает видимость линий
opt.number = true

-- установите относительные пронумерованные строки
opt.relativenumber = true

-- показывать курсор все время
opt.ruler = true

-- отключить вводную часть nvim
opt.shortmess:append "sI"

-- переход к предыдущей / следующей строке с помощью h, l, стрелки влево и стрелки вправо, когда курсор достигает конца / начала строки
opt.whichwrap:append "<>[]hl"

-- всегда показывайте столбец со знаком, в противном случае текст каждый раз будет смещаться
opt.signcolumn = "yes"

-- горизонтальное разделение идет ниже
opt.splitbelow = true

-- вертикально разделение идет вправо
opt.splitright = true

-- вставьте 2 пробела для табуляции
opt.tabstop = 2

-- установите цвета графического интерфейса term (большинство терминалов поддерживают это)
opt.termguicolors = true

-- более быстрое завершение (по умолчанию 4000 мс)
opt.updatetime = 300

-- время ожидания завершения отображаемой последовательности (в миллисекундах)
opt.timeoutlen = 500

-- не читать из глобального хранилища
opt.shadafile = "NONE"

-- не переррисовывать все время https://stackoverflow.com/questions/9341768/vim-response-quite-slow/55501120#55501120
opt.lazyredraw = true

-- макс длина линий для подсветки
opt.synmaxcol = 1024

-- новый движок регулярных выражений
opt.regexpengine = 1

-- скрытый уровень отключен и текст в `` можно видеть
opt.conceallevel = 0

-- делает отступы в зависимости от expandtab. так в док. написано.
opt.smarttab = true

-- автоотступ
opt.autoindent = true

-- исправляет поведение backspace на большинстве терминалов.
opt.backspace = "indent,eol,start"

-- -- рабочий каталог всегда будет таким же, как и ваш рабочий каталог
-- opt.autochdir = true

-- начинать скролить за 33 строк до конца экрана
opt.scrolloff = 12

-- граница кода (черта вертикальная)
opt.colorcolumn = "320"

-- устанавливает максимальное вложение складок
opt.foldnestmax = 10

-- устанавливает уровень сворачивания: складки с более высоким уровнем будут закрыты. Установка этого параметра на ноль закроет все складки . Чем больше число, тем меньше складок .
opt.foldlevel = 2

opt.foldmethod = "manual"

-- всплывающее меню для отображения возможных вариантов завершения.
opt.completeopt = { "menuone", "noselect" }

-- transparent menu
opt.pumblend = 50

-- transparent popup
opt.winblend = 5

-- pop up menu height
opt.pumheight = 10

-- display lines as one long line
opt.wrap = false

-- что то связанное  со статусной строкой TODO: ПРОВЕРИТЬ !!!
opt.laststatus = 0

-- highlight the current line
opt.cursorline = true

-- always show tabs
opt.showtabline = 2

-- creates a swapfile
opt.swapfile = false

-- we don't need to see things like -- INSERT -- anymore
opt.showmode = false

-- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
opt.writebackup = false

-- ширина столбца с цифрами строко
opt.numberwidth = 2

-- включено, т.е. еслизакрыть файл и потом открыть то все равно можно будет делать отмену изменений
opt.undofile = true

-- disable tilde on end of buffer: https://github.com/neovim/neovim/pull/8546#issuecomment-643643758
opt.fillchars = { eob = " " }

-- отключение некоторые встроенные плагины vim
for _, plugin in pairs(disabled_plagins) do
  g["loaded_" .. plugin] = 1
end

-- рассматривайте слова, разделенные тире, как текстовый объект
cmd [[set iskeyword+=-]]

-- последовательность букв, описывающая, как автоматически форматирование должно быть выполнено. TODO: this doesn't seem to work
cmd [[set formatoptions-=cro]]

-- session
-- vim.g.session_directory='/mnt/store/home/.config/nvim/sessions'

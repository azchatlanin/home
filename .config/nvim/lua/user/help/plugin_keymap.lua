local popup = require("plenary.popup")
local window = require("plenary.window")

PluginKeymap = {}
local open = false;
local win_id = nil

PluginKeymap.toggle = function()
  if open then
    open = false
    PluginKeymap.close_pp()
  else
    open = true
    PluginKeymap.open_pp()
  end
end

PluginKeymap.open_pp = function()
  win_id = popup.create({
    "TREE:",
    " tree focus                       :            normal <leader>n",
    " refrech                          :                normal \"R\"",
    " rename                           :                normal \"r\"",
    " create                           :                normal \"a\"",
    " remove                           :                normal \"d\"",
    " cut                              :                normal \"x\"",
    " copy                             :                normal \"c\"",
    " open in a vertical split         :            normal \"<C-v>\"",
    " open in a horizontal split       :            normal \"<C-x>\"",
    " open as a preview                :            normal \"<Tab>\"",
    "",
    "----------------------------------------------------------------",
    "SINGLE COMMANDS:",
    " scroll                           :               <C-u> or <C-d>",
    " search                           :                    <leader>S",
    " show warning                     :                    <leader>e",
    " goto defenition                  :                    <leader>j",
    " global replace in file           :                :%s/old/new/g",
    " unselect from search result      :                 normal <C-l>",
    " wrapper word in quote            :            normal <leader>\"",
    " run codi                         :                    :Codi cpp",
    " hop search word                  :                 normal \"S\"",
    " resize window                    :            normal <C-arrows>",
    " toggle terminal                  :             normal <leader>t",
    " list changes                     :          :UndotreeToggle<CR>",
    "",
    "----------------------------------------------------------------",
    "INCLUDE WORD IN {[(' and more",
    " select word in {                 :                         veS{",
    " change selected word in { to '   :                         cs{'",
    "",
    "----------------------------------------------------------------",
    "BUFFER NAVIGATION:",
    " buffer prev                      :               normal <S-TAB>",
    " buffer next                      :                 normal <TAB>",
    "",
    "----------------------------------------------------------------",
    "MOVE TEXT:",
    " move text up                     :                 visual <A-k>",
    " move text down                   :                 visual <A-j>",
    "",
    "----------------------------------------------------------------",
    "COMMENT",
    " add comment block                :                 normal <g-c>",
    " add comment line                 :               normal <g-c-c>",
    ""
  }, {
    padding = { 0, 3, 0, 3 },
    border = true,
})
end

PluginKeymap.close_pp = function()
  window.try_close(win_id, false)
end

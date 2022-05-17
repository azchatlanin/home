local popup = require("plenary.popup")
local window = require("plenary.window")

NvimKeymap = {}
local open = false;
local win_id = nil

NvimKeymap.toggle = function()
  if open then
    open = false
    NvimKeymap.close_pp()
  else
    open = true
    NvimKeymap.open_pp()
  end
end

NvimKeymap.open_pp = function()
  win_id = popup.create({
    "",
    "Movable:                                                          ||   Functions:                                       ",
    " go to the row by number                   :                12G   ||    show changes list        :              :changes",
    " go to the next/previous paragraph         :                { }   ||                                                    ",
    " go to the next/previous sentence          :                ( )   ||   Fold:                                            ",
    " go to the top, middle and bottom          :                HML   ||     create fold             :                    zf",
    " switch between the brackets               :                  %   ||     toggle fold             :                    za",
    " add mark                                  :                mf    ||     delete fold             :                    zd",
    " goto mark                                 :                `f    ||",
    "                                                                  ||",
    "Edit:                                                             ||",
    " delete all word under cursor              :                daw   ||",
    "                                                                  ||",
    "Macros                                                            ||",
    " create[name]write                         :                qwq   ||",
    " play                                      :                @w    ||",
    "                                                                  ||",
    "                                                                  ||",
    "------------------------------------------------------------------",
    "",
    "                          ",
    "",
  }, {
    padding = { 0, 3, 0, 3 },
    border = true,
})
end

NvimKeymap.close_pp = function()
  window.try_close(win_id, false)
end

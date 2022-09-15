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
    "Movable:                                                          ||   Functions:                                        ",
    " go to the row by number                   :                12G   ||    show changes list        :               :changes",
    " go to the next/previous paragraph         :                { }   ||    open history window      :                     q:",
    " go to the next/previous sentence          :                ( )   ||    close history window     :                     :q",
    " go to the top, middle and bottom          :                HML   ||    run shel command         :                   :!ls",
    " switch between the brackets               :                  %   ||",
    " add mark                                  :                mf    ||",
    " goto mark                                 :                `f    ||",
    " goto pervius file                         :               Ctrl-6 ||   Fold:                                            ",
    "                                                                  ||     create fold             :                    zf",
    "Edit:                                                             ||     toggle fold             :                    za",
    " delete all word under cursor              :                daw   ||     delete fold             :                    zd",
    " delete paragraph                          :                dap   ||",
    " delete from currenta position line's end  :                D     ||",
    " upper case current word                   :                gUaw  ||",
    " upper case current paragraph              :                gUap  ||",
    " upper case current row                    :                gUU   ||",
    "                                                                  ||",
    "Macros                                                            ||",
    " create[name]write                         :                qwq   ||",
    " play                                      :                @w    ||",
    "                                                                  ||",
    "",
  }, {
    padding = { 0, 3, 0, 3 },
    border = true,
})
end

NvimKeymap.close_pp = function()
  window.try_close(win_id, false)
end

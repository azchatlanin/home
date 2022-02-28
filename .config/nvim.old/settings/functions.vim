
augroup MySettings
  autocmd!
  
  " set background
  "autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
  
  " set background airline
  "autocmd vimenter * hi airline_tabfill ctermbg=NONE guibg=NONE
  
  " set color current line
  "autocmd vimenter * hi clear CursorLine
  "autocmd vimenter * hi CurosrLineNR cterm=bold

  " set background folded
  "autocmd vimenter * hi Folded ctermbg=16 
augroup end

" clean comand line
function! s:empty_message(timer)
  if mode() ==# 'n'
    echon ''
  endif
endfunction

augroup cmd_msg_cls
  autocmd!
  autocmd CmdlineLeave :  call timer_start(3000, funcref('s:empty_message'))
augroup end 

"--------------------------------------
" c++
augroup cpp_snipets
  autocmd!
  autocmd FileType cpp iabbrev cppclass class <C-R>=expand("%:t:r")<CR><cr>{<cr>public:<cr><C-R>=expand("%:t:r")<CR>();<cr>~<C-R>=expand("%:t:r")<CR>();<cr><cr>public:<cr>void MyFunction();<cr><cr>private:<cr>void MyPrivateFuncton();<cr>};
  autocmd FileType cpp iabbrev cppimpl  #include"<C-R>=expand("%:t:r")<CR>.hpp"<cr><C-R>=expand("%:t:r")<CR>::<C-R>=expand("%:t:r")<CR>()<cr>{<cr>}<cr><cr><C-R>=expand("%:t:r")<CR>::~<C-R>=expand("%:t:r")<CR>()<cr>{<cr>}<cr><cr>void <C-R>=expand("%:t:r")<CR>::MyFunction()<cr>{<cr>}<cr><cr>void <C-R>=expand("%:t:r")<CR>::MyPrivateFuncton()<cr>{<cr>}
augroup END



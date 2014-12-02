let s:myBuffers = {}
function! Add_To_Buffer(num)
  let currentBuffer = bufnr('')
  let s:myBuffers[a:num] = currentBuffer
  echo "Buffer added as " . a:num
endfunction

function! Go_To_Buffer(num)
  if a:num == 0
   exe "normal! \<c-^>"
  elseif has_key(s:myBuffers, a:num)
    execute "buf " . s:myBuffers[a:num]
  elseif bufexists(a:num)
    execute "buf " . a:num
  else
    echo "Buffer ". a:num . " does not exist"
  endif
endfunction

command! -nargs=1 GoToBuffer call Go_To_Buffer(<args>)
command! -nargs=1 AddToBuffer call Add_To_Buffer(<args>)
command! ListBuffer echo s:myBuffers
nnoremap <C-^> :<C-U>GoToBuffer(v:count)<cr>
nnoremap <leader><C-^> :<C-U>AddToBuffer(v:count)<cr>


function! s:FindFiletype()
    let filetype = &filetype
    let functionName = 's:Run' . filetype
    try
        let s:CurrentFunction = function(functionName)
        com! RunCode :call s:CurrentFunction()
    catch
        com! RunCode :
    endtry
endfunction

function! s:Runpython()
    :!python3 %
endfunction

function! s:Runphp()
    :!php %
endfunction

function! s:Runhaskell()
    :!runghc %
endfunction

function! s:Runvim()
    :so %
endfunction

autocmd BufEnter * :call s:FindFiletype()

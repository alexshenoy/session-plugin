" Author: Alex Shenoy
"
" Session Stuff. Consider Making this a vim plugin

set sessionoptions-=options
set sessionoptions-=buffers

function! FindSessionRecursively()
    " Search up tree to find session
    " TODO: Add a recursive search up the tree
endfunction

function! LoadSession()
    let session_path = '.vim-session'

    if !empty(glob(session_path))
        :execute "source " fnameescape(session_path)
    endif
endfunction

function! CreateSession()
    if AnyGitBuffers() == 0
        let session_path = '.vim-session'

        :execute "mksession!" fnameescape(session_path)
    endif
endfunction

function! AnyGitBuffers()
    return len(filter(range(bufnr('$')), 'getbufvar(1+v:val, "&ft", "")=~"^git"'))
endfunction

if argc() == 0
    :call LoadSession()
endif

au VimLeavePre * :call CreateSession()
" End Session Stuff

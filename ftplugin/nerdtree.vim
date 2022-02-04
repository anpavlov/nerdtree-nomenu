nnoremap <silent> <buffer> <C-]> :call NERDTreeChdir()<CR>

function! NERDTreeChdir() abort
        let node = g:NERDTreeFileNode.GetSelected()
        call b:NERDTree.changeRoot(node)
        try
                call node.path.changeToDir()
        catch /^NERDTree.PathChangeError/
                call nerdtree#echoWarning('could not change cwd')
        endtry
endfunction

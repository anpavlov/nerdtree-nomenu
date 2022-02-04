call NERDTreeAddKeyMap({ 'key': 'a', 'scope': 'Node', 'callback': 'NERDTreeAdd', 'override': 1 })
call NERDTreeAddKeyMap({ 'key': 'r', 'scope': 'Node', 'callback': 'NERDTreeRename', 'override': 1 })
call NERDTreeAddKeyMap({ 'key': 'c', 'scope': 'Node', 'callback': 'NERDTreeCopy', 'override': 1 })
call NERDTreeAddKeyMap({ 'key': 'd', 'scope': 'Node', 'callback': 'NERDTreeDelete', 'override': 1 })
call NERDTreeAddKeyMap({ 'key': '<CR>', 'scope': 'DirNode', 'callback': 'NERDTreeRootCd', 'override': 1 })

function! NERDTreeRename(node) abort
        call NERDTreeMoveNode()
endfunction

function! NERDTreeCopy(node) abort
        call NERDTreeCopyNode()
endfunction

function! NERDTreeDelete(node) abort
        call NERDTreeDeleteNode()
endfunction

function! NERDTreeAdd(node) abort
        call NERDTreeAddNode()
endfunction

function! NERDTreeRootCd(node) abort
        if a:node.isRoot()
                call a:node.path.getParent().changeToDir()
                call nerdtree#ui_glue#upDir(0)
                return
        endif

        call a:node.activate({})
endfunction

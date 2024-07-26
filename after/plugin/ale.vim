" Specify key map for ALEInfo
autocmd FileType c,cpp,objc nnoremap <buffer><Leader>ai :<C-u>ALEInfo<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>ai :<C-u>ALEInfo<CR>

" Specify key map for ALELint
autocmd FileType c,cpp,objc nnoremap <buffer><Leader>al :<C-u>ALELint<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>al :<C-u>ALELint<CR>

" Specify key map for ALEReset
autocmd FileType c,cpp,objc nnoremap <buffer><Leader>ar :<C-u>ALEReset<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>ar :<C-u>ALEReset<CR>

" Disable lint on text changed
let g:ale_lint_on_text_changed = 'never'

" Disable virtual text appearing at ends of lines
let g:ale_virtualtext_cursor = 'disabled'

if exists('g:loaded_bullet_list')
    finish
endif
let g:loaded_bullet_list = 1

nno <silent><unique> m*     :<c-u>set opfunc=bullet_list#unordered<cr>g@
nno <silent><unique> m**    :<c-u>set opfunc=bullet_list#unordered<bar>exe 'norm! '.v:count1.'g@_'<cr>
xno <silent><unique> m*     :<c-u>call bullet_list#unordered('vis')<cr>

nno <silent><unique> m#     :<c-u>set opfunc=bullet_list#ordered<cr>g@
nno <silent><unique> m##    :<c-u>set opfunc=bullet_list#ordered<bar>exe 'norm! '.v:count1.'g@_'<cr>
xno <silent><unique> m#     :<c-u>call bullet_list#ordered('vis')<cr>

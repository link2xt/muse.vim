syn match directive '^#[a-zA-Z]* .*'
syn match footnote '\[[0-9]*\]'
syn match header '^\*\** .*'
syn match separator '^-----*'
syn match url '\[\[.*\]\]'

hi def link directive PreProc
hi def link footnote Underlined
hi def link header Title
hi def link separator Delimiter
hi def link url Underlined

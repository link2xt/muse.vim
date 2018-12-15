syn match directive '^#[a-zA-Z]* .*'
syn match footnote '\[[0-9]*\]'
syn match header '^\*\+ .*'
syn match separator '^----\+'
syn match url '\[\[.*\]\]'

syn match emphasisTag '<em>.*</em>'
syn match strongTag '<strong>.*</strong>'

syn match emphasis '\*.*\*'
syn match strong '\*\*.*\*\*'

syn region Comment start="<comment>" end="</comment>"

hi def Emphasis term=italic cterm=italic gui=italic
hi def Strong   term=bold   cterm=bold   gui=bold

hi def link directive PreProc
hi def link footnote Underlined
hi def link header Title
hi def link separator Delimiter
hi def link url Underlined
hi def link emphasis Emphasis
hi def link strong Strong
hi def link emphasisTag Emphasis
hi def link strongTag Strong

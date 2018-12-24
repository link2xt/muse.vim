syn match directive '^#[a-zA-Z]* .*'
syn match footnote '\[[0-9]*\]'hs=s+1,he=e-1
syn match footnote '{[0-9]*}'hs=s+1,he=e-1 " secondary footnotes
syn match header '^\*\+ .*'
syn match separator '^----\+'
syn match url '\[\[\_.\{-}\]\]'

syn region emphasisTag start='<em>' end='</em>'
syn region strongTag start='<strong>' end='</strong>'

syn region strong start='\*\*[^* ]' end='\*\*'
syn region emphasis start='\*[^* ]' end='\*'
syn region strongEmphasis start='\*\*\*[^* ]' end='\*\*\*'

syn match Comment '^;.*'
syn region Comment start="<comment>" end="</comment>"
syn region example start="<example>" end="</example>"
syn region verbatim start="<verbatim>" end="</verbatim>"
syn region code start="=" end="="
syn region code start="<code>" end="</code>"
syn region example start="{{{" end="}}}"
syn match nbsp '\~\~'


hi def Emphasis        term=italic      cterm=italic      gui=italic
hi def Strong          term=bold        cterm=bold        gui=bold
hi def StrongEmphasis  term=bold,italic cterm=bold,italic gui=bold,italic

hi def link directive PreProc
hi def link footnote Underlined
hi def link header Title
hi def link separator Delimiter
hi def link url Underlined
hi def link emphasis Emphasis
hi def link strong Strong
hi def link emphasisTag Emphasis
hi def link strongTag Strong
hi def link verbatim Comment
hi def link example Comment
hi def link code Comment
hi def link nbsp Delimiter

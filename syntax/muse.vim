syntax match directive '^#[a-zA-Z]* .*'
syntax match footnote '\[[0-9]*\]'hs=s+1,he=e-1
syntax match footnote '{[0-9]*}'hs=s+1,he=e-1 " secondary footnotes
syntax match header '^\*\+ .*'
syntax match separator '^----\+'
syntax region url start='\[\[' end='\]\]'

syntax region emphasisTag start='<em>' end='</em>'
syntax region strongTag start='<strong>' end='</strong>'

syntax region emphasis       start='\(^\|[^*[:alnum:]]\)\*[^* ]'hs=e     end='\S\*'he=s
syntax region strong         start='\(^\|[^*[:alnum:]]\)\*\*[^* ]'hs=e   end='\S\*\*'he=s
syntax region strongEmphasis start='\(^\|[^*[:alnum:]]\)\*\*\*[^* ]'hs=e end='\S\*\*\*'he=s

syntax match Comment '^;$'
syntax match Comment '^; .*'
syntax region Comment start="<comment>" end="</comment>"
syntax region example start="<example>" end="</example>"
syntax region verbatim start="<verbatim>" end="</verbatim>"
syntax region code start="=[^= ]"hs=e end="=\($\|[^[:alnum:]]\)"he=s
syntax region code start="<code>" end="</code>"
syntax region quote start="<quote>" end="</quote>"
syntax region example start="{{{" end="}}}"
syntax match nbsp '\~\~'

syntax region Section start="^\*\+ " end="^\*\+ \&" fold contains=TOP

highlight default Emphasis        term=italic      cterm=italic      gui=italic
highlight default Strong          term=bold        cterm=bold        gui=bold
highlight default StrongEmphasis  term=bold,italic cterm=bold,italic gui=bold,italic

highlight default link directive PreProc
highlight default link footnote Underlined
highlight default link header Title
highlight default link separator Delimiter
highlight default link url Underlined
highlight default link emphasis Emphasis
highlight default link strong Strong
highlight default link emphasisTag Emphasis
highlight default link strongTag Strong
highlight default link verbatim Comment
highlight default link example Comment
highlight default link code Comment
highlight default link nbsp Delimiter

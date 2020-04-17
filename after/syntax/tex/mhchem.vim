" Define the ce command as a math environment
" See `texdoc mhchem`

syn match texTypeStyle		"\\ce\>"
" The following line copies behaviour for \ce{...} as $...$
syn region texMathZoneX  matchgroup=Delimiter start="\\ce\s*{" skip="\%(\\\\\)*\\\$"   matchgroup=Delimiter    end="}"    end="%stopzone\>"       contains=@texMathZoneGroup

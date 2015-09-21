up-line-or-search-prefix () {
    local CURSOR_before_search=$CURSOR
    zle up-line-or-search "$LBUFFER"
    CURSOR=$CURSOR_before_search
}
zle -N up-line-or-search-prefix

down-line-or-search-prefix () {
    local CURSOR_before_search=$CURSOR
    zle down-line-or-search "$LBUFFER"
    CURSOR=$CURSOR_before_search
}
zle -N down-line-or-search-prefix

bindkey '^[[A' up-line-or-search-prefix
bindkey '^[[B' down-line-or-search-prefix


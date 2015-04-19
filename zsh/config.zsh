# load functions
autoload -U zmv

# for vi-mode
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search
bindkey '^r' history-incremental-search-backward

# disable auto rename title
DISABLE_AUTO_TITLE=true

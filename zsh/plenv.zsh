if [[ -d "$HOME/.plenv/bin" ]]; then
    export PATH="$HOME/.plenv/bin:$PATH"
    eval "$(plenv init -)"
fi

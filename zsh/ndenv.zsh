if [[ -d "$HOME/.ndenv/bin" ]]; then
    export PATH="$HOME/.ndenv/bin:$PATH"
    eval "$(ndenv init -)"
fi

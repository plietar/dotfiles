if [[ -d "$HOME/.phpenv/bin" ]]; then
    export PATH="$HOME/.phpenv/bin:$PATH"
    eval "$(phpenv init -)"
fi

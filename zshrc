# Load local configuration file, if it exists
if [[ -f "$HOME/.zsh_local" ]]; then
    source "$HOME/.zsh_local"
fi

# Disable zsh auto-complete cache
zstyle ":completion:*:commands" rehash 1

for f in `find "$HOME/.zsh/" -maxdepth 1 -type f -name '*.zsh'`
do
    source "$f"
done

export EDITOR=vim
export PAGER=less

if [[ -d "$HOME/prefix/bin" ]]; then
    export PATH=$HOME/prefix/bin:$PATH
fi

if [[ -d "$HOMEBREW_ROOT" ]]; then
    export PATH="$HOMEBREW_ROOT/bin:$HOMEBREW_ROOT/sbin":$PATH

    if [[ -d "$HOMEBREW_ROOT/opt/coreutils/libexec/gnubin" ]]; then
        export PATH="$HOMEBREW_ROOT/opt/coreutils/libexec/gnubin":$PATH
    fi
    if [[ -d "$HOMEBREW_ROOT/opt/coreutils/libexec/gnuman" ]]; then
        export MANPATH="$HOMEBREW_ROOT/opt/coreutils/libexec/gnuman":$MANPATH
    fi

    if [[ -d "$HOMEBREW_ROOT/opt/findutils" ]]; then
        alias find=gfind
        alias locate=glocate
        alias updatedb=gupdatedb
        alias xargs=gxargs
        alias oldfind=goldfind
    fi

    if [[ -d "$HOMEBREW_ROOT/opt/qt/" ]]; then
        export QTDIR="$HOMEBREW_ROOT/opt/qt"
    fi

    # This actually causes problems when using Python 3
    #if [[ -d "$HOMEBREW_ROOT/lib/python2.7/site-packages" ]]; then
    #    export PYTHONPATH="$HOMEBREW_ROOT/lib/python2.7/site-packages:$PYTHONPATH"
    #fi
fi

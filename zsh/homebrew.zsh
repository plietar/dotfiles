if [[ -d "$HOMEBREW_ROOT" ]]; then
    export PATH="$HOMEBREW_ROOT/bin:$HOMEBREW_ROOT/sbin":$PATH

    export HOMEBREW_CASK_OPTS="--caskroom=$HOMEBREW_ROOT/Caskroom"

    if [[ -d "$HOMEBREW_ROOT/opt/coreutils/libexec/gnubin" ]]; then
        export PATH="$HOMEBREW_ROOT/opt/coreutils/libexec/gnubin":$PATH
    fi
    if [[ -d "$HOMEBREW_ROOT/opt/coreutils/libexec/gnuman" ]]; then
        export MANPATH="$HOMEBREW_ROOT/opt/coreutils/libexec/gnuman":$MANPATH
    fi

    if [[ -d "$HOMEBREW_ROOT/opt/gnu-sed/libexec/gnubin" ]]; then
        export PATH="$HOMEBREW_ROOT/opt/gnu-sed/libexec/gnubin":$PATH
    fi
    if [[ -d "$HOMEBREW_ROOT/opt/gnu-sed/libexec/gnuman" ]]; then
        export MANPATH="$HOMEBREW_ROOT/opt/gnu-sed/libexec/gnuman":$MANPATH
    fi

    if [[ -d "$HOMEBREW_ROOT/opt/bison/bin" ]]; then
        export PATH="$HOMEBREW_ROOT/opt/bison/bin":$PATH
    fi
    if [[ -d "$HOMEBREW_ROOT/opt/bison/share/man" ]]; then
        export MANPATH="$HOMEBREW_ROOT/opt/bison/share/man":$MANPATH
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
    
    if [[ -d $HOMEBREW_ROOT/opt/android-sdk ]]; then
        export ANDROID_HOME=$HOMEBREW_ROOT/opt/android-sdk
    fi

fi

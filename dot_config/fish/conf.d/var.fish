command -v eza >/dev/null &&
    # preferred listing
    alias ls='eza -al --color=always --group-directories-first --icons=auto' &&
    # all files and dirs
    alias la='eza -a --color=always --group-directories-first --icons=auto' &&
    # long format
    alias ll='eza -l --color=always --group-directories-first --icons=auto' &&
    # tree listing
    alias lt='eza -aT --color=always --group-directories-first --icons=auto' &&
    # show only dotfiles
    alias l.='eza -a | egrep"^\."' ||
    # Ls with with no exa
    alias ls='ls --color=always -lhsi --author'


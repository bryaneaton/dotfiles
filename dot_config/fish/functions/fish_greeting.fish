function fish_greeting
    # Skip inside nested shells, IDE terminals, and multiplexer splits to keep noise down.
    # (Not MOTD_SHOWN: PAM sets that on SSH logins.)
    if set -q __motd_done; or set -q ZELLIJ; or test "$TERM_PROGRAM" = vscode
        return
    end
    set -gx __motd_done 1
    command -q motd; and motd
end

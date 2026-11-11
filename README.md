# dotfiles

Managed with [chezmoi](https://www.chezmoi.io/).

```sh
chezmoi init --apply git@github.com:bryaneaton/dotfiles.git
```

Secrets are not tracked. Fish loads them from `~/.config/fish/secrets.fish`
(create it locally, `chmod 600`).

# openotters/homebrew-tap

Homebrew tap for the `otters` CLI and `ottersd` daemon.

## Install

```sh
brew install openotters/tap/otters
brew services start otters
```

`brew services start otters` launches `ottersd serve` via launchd (macOS) or
systemd (Linux). Logs land in `$(brew --prefix)/var/log/ottersd.{log,err.log}`.

## What's installed

- `otters` — CLI (the thing you type)
- `ottersd` — daemon (the thing `brew services` keeps alive)

Both are regular Go binaries; no runtime dependencies beyond `libc`.

## Authoring

The formula at `Formula/otters.rb` is regenerated on every tagged release
of [openotters/openotters](https://github.com/openotters/openotters) by
GoReleaser (config: `workspace/openotters/.goreleaser.yaml`). Manual
edits will be overwritten — change the `brews:` stanza in GoReleaser
instead.

## Publishing this tap

Push this directory to `github.com/openotters/homebrew-tap` as a public
repo. The repo name **must** be `homebrew-tap` for `brew tap
openotters/tap` to resolve it — Homebrew strips the `homebrew-` prefix.

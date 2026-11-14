# mlg87/homebrew-tap

Homebrew casks for [Unmark](https://github.com/mlg87/unmark), a lightweight GitHub-flavored markdown viewer and editor.

```sh
brew install mlg87/tap/unmark
```

That installs `/Applications/Unmark.app` and links the `unmark` command into Homebrew's `bin`. Unmark updates itself with Sparkle, so `brew upgrade` skips it unless you pass `--greedy`.

`Casks/unmark.rb` is bumped by Unmark's Release workflow on every `v*` tag; don't edit `version` or `sha256` by hand. Install troubleshooting is in [Unmark's README](https://github.com/mlg87/unmark#homebrew).

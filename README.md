# WuNEO Homebrew tap

Mac apps from [WuNEO](https://wuneo.com), installable with [Homebrew](https://brew.sh).

```bash
brew install --cask wuneo-inc/tap/<app>
```

Named in full like this, Homebrew taps and trusts this tap by itself. To use a cask from it any other way
(`brew info <app>` after a bare `brew tap`, say), trust it first: `brew trust wuneo-inc/tap`.

Over a copy of the app that was installed from its download page, add `--force`: Homebrew does not replace an
app it did not put there.

| App | Install |
| --- | --- |
| DockPick: window previews from the Dock | `brew install --cask wuneo-inc/tap/dockpick` |

An app appears here once it has a stable release; pre-releases are not published to Homebrew.

Each app keeps itself up to date once installed, so `brew upgrade` leaves it alone. To remove one:

```bash
brew uninstall --cask <app>
```

## For maintainers

The files in `Casks/` are generated. Each app's own repository holds its cask template and writes the cask
here as the last step of a release (`make brew`, after `make publish`). Do not edit a cask by hand: the next
release overwrites it.

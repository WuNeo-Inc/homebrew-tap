# WuNEO Homebrew tap

Mac apps from [WuNEO](https://wuneo.com), installable with [Homebrew](https://brew.sh).

```bash
brew tap wuneo-inc/tap
brew trust --cask wuneo-inc/tap/<app>
brew install --cask wuneo-inc/tap/<app>
```

The middle step is Homebrew's own: recent versions load a cask from a tap other than their own only once
it has been trusted. `brew trust wuneo-inc/tap` trusts every app here at once.

| App | Install |
| --- | --- |
| DockPick: window previews from the Dock | `brew trust --cask wuneo-inc/tap/dockpick && brew install --cask wuneo-inc/tap/dockpick` |

An app appears here once it has a stable release; pre-releases are not published to Homebrew.

Each app keeps itself up to date once installed, so `brew upgrade` leaves it alone. To remove one:

```bash
brew uninstall --cask <app>
```

## For maintainers

The files in `Casks/` are generated. Each app's own repository holds its cask template and writes the cask
here as the last step of a release (`make brew`, after `make publish`). Do not edit a cask by hand: the next
release overwrites it.

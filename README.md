# ohnapse tap

Homebrew formula for [ohnapse](https://github.com/ohnapse), a terminal-native AI
coding agent. Binaries and checksums live on
[`ohnapse/public`](https://github.com/ohnapse/public/releases). This tap is
updated when a release there is published.

## Install

```sh
brew install ohnapse/tap/ohnapse
```

That auto-taps this repo and puts both `ohnapse` and `oh` on `PATH`. Afterwards:

```sh
brew upgrade ohnapse
```

To install by the short name on a later machine, trust the formula once:

```sh
brew trust --formula ohnapse/tap/ohnapse
brew install ohnapse
```

## Without Homebrew

Scripts and manual archives are in [`ohnapse/public`](https://github.com/ohnapse/public):

```sh
curl -fsSL https://raw.githubusercontent.com/ohnapse/public/main/install.sh | sh
```

Windows: [`install.ps1`](https://raw.githubusercontent.com/ohnapse/public/main/install.ps1).
Settings schema: [`ohnapse-settings.schema.json`](https://raw.githubusercontent.com/ohnapse/public/main/schemas/ohnapse-settings.schema.json).

---

The formula is proprietary to [Kolosys](https://github.com/kolosys). All rights reserved.

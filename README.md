# gldnrmz-screenshot

Takes a screenshot when a player presses a configured key and uploads it to a Discord webhook.

## 📦 Requirements

- [screencapture](https://github.com/itschip/screencapture) (recommended) or [screenshot-basic](https://github.com/citizenfx/screenshot-basic). Whichever is running is used.

No framework is needed.

## ⚡ Installation

1. Start `screencapture` (or `screenshot-basic`) before this resource.
2. Add `ensure gldnrmz-screenshot` to `server.cfg`.
3. Put your Discord webhook in `Config.Webhook` (screenshots are skipped while it's empty).

## ⚙️ Configuration

In `config.lua`:

- `Config.Keys`: control IDs that take a screenshot (22 = Space, 44 = Q).
- `Config.Webhook`: Discord webhook URL. Screenshots are skipped while it is empty.

## 🆕 Changes in 1.1.0

- Uses screencapture or screenshot-basic, whichever is running (it used to need screenshot-basic).

## 📄 License

**GLDNRMZ Script License** - see [LICENSE](LICENSE).

- ✅ Run it on your own server and edit it for that server
- ❌ Don't sell it, re-upload or share it (free or paid), or put it in a pack or server build
- ❌ Don't remove the credits or claim it as your own

Need something else, like a commercial license? Ask on [Discord](https://discord.gg/7YHJ7774jA).

<!-- gldnrmz-links -->
---

## 🔗 Links

<p align="center">
  <a href="https://discord.gg/7YHJ7774jA"><img src="https://img.shields.io/badge/Discord-5865F2?style=for-the-badge&logo=discord&logoColor=white" alt="Discord" /></a>
  <a href="https://forum.cfx.re/u/gldnrmz/summary"><img src="https://img.shields.io/badge/Cfx.re-F40552?style=for-the-badge&logoColor=white" alt="Cfx.re forum" /></a>
  <a href="https://5metrics.dev/resources?search=gldnrmz"><img src="https://img.shields.io/badge/5Metrics-00BFFF?style=for-the-badge&logoColor=white" alt="5Metrics" /></a>
  <a href="https://gldnrmz.tebex.io"><img src="https://img.shields.io/badge/Tebex-FFD700?style=for-the-badge&logoColor=black" alt="Tebex store" /></a>
  <a href="https://www.buymeacoffee.com/gldnrmz"><img src="https://img.shields.io/badge/Buy%20me%20a%20coffee-FF813F?style=for-the-badge&logo=buymeacoffee&logoColor=white" alt="Buy me a coffee" /></a>
</p>

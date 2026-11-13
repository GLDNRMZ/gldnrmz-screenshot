# gldnrmz-screenshot

Takes a screenshot when a player presses a configured key and uploads it to a Discord webhook.

## Requirements

- [screencapture](https://github.com/itschip/screencapture) (recommended) or screenshot-basic. Whichever is running is used.

No framework is needed.

## Configuration

In `config.lua`:

- `Config.Keys`: control IDs that take a screenshot (22 = Space, 44 = Q).
- `Config.Webhook`: Discord webhook URL. Screenshots are skipped while it is empty.

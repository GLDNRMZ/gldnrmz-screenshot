# gldnrmz-screenshot

Takes a screenshot when a player presses a configured key and uploads it to a Discord webhook.

## Requirements

- [screencapture](https://github.com/itschip/screencapture) (recommended) or screenshot-basic. Whichever is running is used.

No framework is needed.

## Installation

1. Start `screencapture` (or `screenshot-basic`) before this resource.
2. Add `ensure gldnrmz-screenshot` to `server.cfg`.
3. Put your Discord webhook in `Config.Webhook` (screenshots are skipped while it's empty).

## Configuration

In `config.lua`:

- `Config.Keys`: control IDs that take a screenshot (22 = Space, 44 = Q).
- `Config.Webhook`: Discord webhook URL. Screenshots are skipped while it is empty.

## Changes in 1.1.0

- Uses screencapture or screenshot-basic, whichever is running (it used to need screenshot-basic).

# WezTerm

- As of writing, very little work has been done on the project
  - It looks like @wez is working on other things
  - Even PRs which are ready to merge are going stale
  - I personally might try fixing some of these issues, but little motivation until
    PR merging activity seems likely
- Domains struggle with resizing & more than 1 pane
  - Best to close all but 1 pane in a tab before detaching, otherwise you'll need to
    do it anyway once reattached
  - [wez/wezterm#4723](https://github.com/wez/wezterm/issues/4723)
  - [wez/wezterm#5117](https://github.com/wez/wezterm/issues/5117)
  - [wez/wezterm#5142](https://github.com/wez/wezterm/issues/5142)
  - [wez/wezterm#5165](https://github.com/wez/wezterm/issues/5165)
- Tab order is not preserved if changed when in a domain
  - TODO: open GH issue
- Unix domains require un-documented default first value
  - Just needs `{ name = "some name for local domain" }` as first value for `unix_domains`
  - TODO: needs a GH issue for improved docs
- SSH domains are nearly useless
  - For very basic setups could work
  - Built-in SSH doesn't support nearly anything in `~/.ssh/config` so anything like
    proxy-jumping or match statements don't work
  - Unix domains work over SSH via `proxy_command` and lets you use the real SSH client
    - e.g.
      ```lua
      {
        name = "<domain name>",
        proxy_command = {
          "ssh",
          "-T",
          "-A",
          "<ssh hostname>",
          "</path/to/wezterm>",
          "cli",
          "proxy",
        },
      }
      ```
- No way to have WezTerm execute a command within a domain and return the result locally
  - Would be useful for status bar
  - TODO: open GH issue
- Keybinds on macOS are real blech by default
  - Have rebuilt base keybinds (not key-tables) entirely based on what I used in iTerm
  - Works very well, not public yet but want to make it so eventually

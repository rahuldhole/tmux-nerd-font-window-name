# tmux nerd font window name plugin

Forked from [joshmedeski/tmux-nerd-font-window-name](https://github.com/joshmedeski/tmux-nerd-font-window-name) with some removed and added features.

- [-] removed dependency on `yq`
- [+] expanded Nerd Font default glyph names to cover +10k icons automatically

Automatically add Nerd Font support to your tmux window names!

![tmux-nerd-font-window-name screenshot](./tmux-nerd-font-window-name-screenshot.png)

## Requirements

The following dependencies are required in order to use this plugin:

- [tmux](https://github.com/tmux/tmux)
- [tpm](https://github.com/tmux-plugins/tpm)

## Installation (via tpm)

Add the following line to your tmux configuration file:

```sh
set -g @plugin 'rahuldhole/tmux-nerd-font-window-name'
```

Run `<prefix>+I` to trigger the tpm installer which will download
and source the plugin.

## Custom Placeholder Support

If you prefer to define your own `automatic-rename-format`,
you can include a placeholder that lets this plugin inject its icon output.

For example:

```tmux
set -g automatic-rename-format "#{window_icon} #{b:pane_current_path}"
```

## Configuration

You can configure this plugin by creating a `$HOME/.config/tmux/custom_icons_config.json`
file. The following options can be changed:

```json
{
    "config": {
        "fallback-icon": "?",
        "multi-pane-icon": "",
        "show-name": true,
        "icon-position": "left"
    },
    "icons": {
        "myIcon": "🤯",
        "cmatrix": ""
    }
}
```

## (Optional) Useful TMUX Config

```sh
set -g window-status-format ' #W ' # add some spacings in between icons and hide serial numbers
set -g window-status-current-format ' #[bold]#W#[default] '
```

### Contributions

Contributions are welcome! Feel free to make a pull request to submit more
preset icon settings or improve the codebase!

## Intro Video

Here is the introduction blog post and video that I made for this plugin:

[![blog post](./tmux-nerd-font-window-name-thumb.jpeg)](https://www.joshmedeski.com/posts/tmux-nerd-font-window-name-plugin/)

## Additional tmux plugins

I've authored a few other tmux plugins that you might find useful:

- [sesh - tmux session manager](https://github.com/joshmedeski/sesh)
- [tmux-fzf-url - Quickly open urls with fzf](https://github.com/joshmedeski/tmux-fzf-url)

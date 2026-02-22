# iTerm2 Configuration

## Purpose of com.googlecode.iterm2.plist

The `com.googlecode.iterm2.plist` file is iTerm2's preferences file that stores all your terminal customization settings. This is a macOS property list (plist) file in binary format.

### What it contains:

- **Profile configurations**: Terminal appearance settings including colors, fonts, and themes
- **Color schemes**: Custom color configurations for text, background, ANSI colors (both light and dark modes)
- **Window settings**: Window size, position, and behavior preferences
- **Keyboard mappings**: Custom key bindings and shortcuts
- **Mouse/pointer actions**: Gesture controls (three-finger swipe navigation, etc.)
- **Font settings**: Default fonts (Monaco 12), anti-aliasing, and rendering options
- **Terminal behavior**: Scrollback settings, cursor style, bell behavior
- **Advanced features**: Status bar layout, tab styles, hotkey configurations

### Why use this file?

Instead of manually reconfiguring iTerm2 on each new machine, you can:
1. Copy your existing preferences from `~/Library/Preferences/com.googlecode.iterm2.plist`
2. Store them in version control (like this repository)
3. Restore them on any new machine by copying to `~/Library/Preferences`

This ensures consistent terminal experience across all your devices.

## Installation

1. Download [iTerm2](https://iterm2.com/)
2. Copy `com.googlecode.iterm2.plist` to `~/Library/Preferences/`
3. Restart iTerm2 to apply the settings

**Note**: If iTerm2 is running when you copy the file, you'll need to quit and restart it for the changes to take effect.

## Updating your configuration

To update this file with your current iTerm2 settings:

```bash
cp ~/Library/Preferences/com.googlecode.iterm2.plist /path/to/this/repo/iterm2/
```

iTerm2 automatically saves changes to this file whenever you modify preferences through its UI.

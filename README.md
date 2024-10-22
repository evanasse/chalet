Chalet - A warm colorscheme
===
![#2e201e](https://placehold.co/32x32/2e201e/2e201e.png)
![#A74D39](https://placehold.co/32x32/A74D39/A74D39.png)
![#616655](https://placehold.co/32x32/616655/616655.png)
![#F2A766](https://placehold.co/32x32/F2A766/F2A766.png)
![#D47D49](https://placehold.co/32x32/D47D49/D47D49.png)
![#8A4B53](https://placehold.co/32x32/8A4B53/8A4B53.png)
![#A67458](https://placehold.co/32x32/A67458/A67458.png)
![#A6B3BF](https://placehold.co/32x32/A6B3BF/A6B3BF.png)
</br>
![#5C403B](https://placehold.co/32x32/5C403B/5C403B.png)
![#DF674C](https://placehold.co/32x32/DF674C/DF674C.png)
![#8E947D](https://placehold.co/32x32/8E947D/8E947D.png)
![#FFC786](https://placehold.co/32x32/FFC786/FFC786.png)
![#F49D69](https://placehold.co/32x32/F49D69/F49D69.png)
![#AA6B73](https://placehold.co/32x32/AA6B73/AA6B73.png)
![#C69478](https://placehold.co/32x32/C69478/C69478.png)
![#F2DDBC](https://placehold.co/32x32/F2DDBC/F2DDBC.png)
</br>

# Colors
|Color|Name|ANSI|Hex|
|:------------------------------------------------------:|:-----------|:-------------|:-------:|
|![#2E201E](https://placehold.co/16x16/2E201E/2E201E.png)|Black       |Black         |`#2E201E`|
|![#A74D39](https://placehold.co/16x16/A74D39/A74D39.png)|Dark red    |Red           |`#A74D39`|
|![#616655](https://placehold.co/16x16/616655/616655.png)|Dark green  |Green         |`#616655`|
|![#F2A766](https://placehold.co/16x16/F2A766/F2A766.png)|Dark yellow |Yellow        |`#F2A766`|
|![#D47D49](https://placehold.co/16x16/D47D49/D47D49.png)|Dark orange |Blue          |`#D47D49`|
|![#8A4B53](https://placehold.co/16x16/8A4B53/8A4B53.png)|Dark purple |Magenta       |`#8A4B53`|
|![#A67458](https://placehold.co/16x16/A67458/A67458.png)|Dark brown  |Cyan          |`#A67458`|
|![#ADADAD](https://placehold.co/16x16/ADADAD/ADADAD.png)|Light grey  |White         |`#ADADAD`|
|![#5C403B](https://placehold.co/16x16/5C403B/5C403B.png)|Darker brown|Light black   |`#5C403B`|
|![#DF674C](https://placehold.co/16x16/DF674C/DF674C.png)|Light red   |Bright red    |`#DF674C`|
|![#8E947D](https://placehold.co/16x16/8E947D/8E947D.png)|Light green |Bright green  |`#8E947D`|
|![#FFC786](https://placehold.co/16x16/FFC786/FFC786.png)|Light yellow|Bright yellow |`#FFC786`|
|![#F49D69](https://placehold.co/16x16/F49D69/F49D69.png)|Light orange|Bright blue   |`#F49D69`|
|![#AA6B73](https://placehold.co/16x16/AA6B73/AA6B73.png)|Light purple|Bright magenta|`#AA6B73`|
|![#C69478](https://placehold.co/16x16/C69478/C69478.png)|Light brown |Bright cyan   |`#C69478`|
|![#F2DDBC](https://placehold.co/16x16/F2DDBC/F2DDBC.png)|White       |Bright white  |`#F2DDBC`|
|![#1E140D](https://placehold.co/16x16/1E140D/1E140D.png)|Background  |-             |`#1E140D`|

# App configs
## [Delta (git-delta)](https://github.com/dandavison/delta)
```ini
[delta]
    syntax-theme = none
    light = false
    line-numbers = true
    minus-style = "#A74D39" normal
    minus-emph-style = "#2E201E" "#A74D39" bold
    line-numbers-minus-style = "#A74D39"
    plus-style = "#616655" normal
    plus-emph-style = "#F2DDBC" "#616655" bold
    line-numbers-plus-style = "#616655"
    line-numbers-left-style = "#5C403B"
    line-numbers-right-style = "#5C403B"
    line-numbers-zero-style = "#5C403B"
```

## [Neovim](https://neovim.io/)
With [Lazy.nvim](https://github.com/folke/lazy.nvim):
```lua
{
    "evanasse/chalet",
    dependencies = { "rktjmp/lush.nvim" },
}
```

## [WezTerm](https://wezfurlong.org/wezterm/)
In `wezterm.lua`:
> You'll have to make `lua/chalet_colors/init.lua` available for the Lua runtime of Wezterm.
```lua
-- Colors
local colors = require("chalet_colors")

config.color_scheme = "chalet"
config.color_schemes = {
    ["chalet"] = {
        background = colors.bg,
        foreground = colors.fg,
        brights = {
            colors.ansi.bright_black,
            colors.ansi.bright_red,
            colors.ansi.bright_green,
            colors.ansi.bright_yellow,
            colors.ansi.bright_blue,
            colors.ansi.bright_magenta,
            colors.ansi.bright_cyan,
            colors.ansi.bright_white,
        },
        ansi = {
            colors.ansi.black,
            colors.ansi.red,
            colors.ansi.green,
            colors.ansi.yellow,
            colors.ansi.blue,
            colors.ansi.magenta,
            colors.ansi.cyan,
            colors.ansi.white,
        },
    },
}
```

# Acknowledgement
* This colorscheme was built with [Lush](http://git.io/lush.nvim).
* This colorscheme's inspiration came from the [Farout colorscheme](https://github.com/fcpg/vim-farout).

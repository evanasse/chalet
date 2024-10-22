local colors = {}

colors.black = "#2E201E"
colors.darker_brown = "#5C403B"

colors.dark_red = "#A74D39"
colors.light_red = "#DF674C"

colors.dark_green = "#616655"
colors.light_green = "#8E947D"

colors.dark_yellow = "#F2A766"
colors.light_yellow = "#FFC786"

colors.dark_orange = "#D47D49"
colors.light_orange = "#F49D69"

colors.dark_purple = "#8A4B53"
colors.light_purple = "#AA6B73"

colors.dark_brown = "#A67458"
colors.light_brown = "#C69478"

colors.light_grey = "#ADADAD"
colors.white = "#F2DDBC"

colors.bg = "#1E140D"
colors.fg = colors.white

colors.ansi = {}
colors.ansi.black = colors.black
colors.ansi.red = colors.dark_red
colors.ansi.green = colors.dark_green
colors.ansi.yellow = colors.dark_yellow
colors.ansi.blue = colors.dark_orange
colors.ansi.magenta = colors.dark_purple
colors.ansi.cyan = colors.dark_brown
colors.ansi.white = colors.light_grey

colors.ansi.bright_black = colors.darker_brown
colors.ansi.bright_red = colors.light_red
colors.ansi.bright_green = colors.light_green
colors.ansi.bright_yellow = colors.light_yellow
colors.ansi.bright_blue = colors.light_orange
colors.ansi.bright_magenta = colors.light_purple
colors.ansi.bright_cyan = colors.light_brown
colors.ansi.bright_white = colors.white

return colors

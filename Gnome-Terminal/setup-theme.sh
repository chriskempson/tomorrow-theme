
#!/usr/bin/env sh
gconftool-2 -s -t string /apps/gnome-terminal/profiles/Default/palette "#000000000000:#919122222626:#777789890000:#AEAE7B7B0000:#1D1D25259494:#68682a2a9b9b:#2B2B66665151:#929295959393:#666666666666:#CCCC66666666:#B5B5BDBD6868:#F0F0C6C67474:#8181A2A2BEBE:#B2B29494BBBB:#8A8ABEBEB7B7:#ECECEBEBECEC"
gconftool-2 -s -t string /apps/gnome-terminal/profiles/Default/background_color "#1d1d1f1f2121"
gconftool-2 -s -t string /apps/gnome-terminal/profiles/Default/foreground_color "#c5c5c8c8c6c6"
gconftool-2 -s -t string /apps/gnome-terminal/profiles/Default/bold_color "#8A8ABEBEB7B7"
gconftool-2 -s -t bool /apps/gnome-terminal/profiles/Default/bold_color_same_as_fg "false"
gconftool-2 -s -t bool /apps/gnome-terminal/profiles/Default/use_theme_colors "false"
gconftool-2 -s -t bool /apps/gnome-terminal/profiles/Default/use_theme_background "false"

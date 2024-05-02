# ------------------------------------------------------------------------------
# Copyright (C) 2020-2024 Aditya Shakya <adi1090x@gmail.com>
#
# Gruvbox Theme
# ------------------------------------------------------------------------------

# Colors
background='#282828'
foreground='#ebdbb2'
color0='#3C3C3C'
color1='#cc241d'
color2='#98971a'
color3='#d79921'
color4='#458588'
color5='#b16286'
color6='#689d6a'
color7='#a89984'
color8='#928374'
color9='#fb4934'
color10='#b8bb26'
color11='#fabd2f'
color12='#83a598'
color13='#d3869b'
color14='#8ec07c'
color15='#ebdbb2'

accent='#ffc86a'
light_value='0.05'
dark_value='0.30'

# Wallpaper
wdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
wallpaper="$wdir/wallpaper"

# Polybar
polybar_font='JetBrains Mono:size=10;3'

# Rofi
rofi_font='Iosevka 10'
rofi_icon='Luna'

# Terminal
terminal_font_name='JetBrainsMono Nerd Font'
terminal_font_size='10'

# Geany
geany_colors='gruvbox.conf'
geany_font='JetBrains Mono 10'

# Appearance
gtk_font='Noto Sans 9'
gtk_theme='Gruvbox'
icon_theme='Luna-Dark'
cursor_theme='Future-Dark'

# Dunst
dunst_width='300'
dunst_height='80'
dunst_offset='15x53'
dunst_origin='top-right'
dunst_font='JetBrains Mono 10'
dunst_border='2'
dunst_separator='2'

# Picom
picom_backend='glx'
picom_corner='0'
picom_shadow_r='14'
picom_shadow_o='0.30'
picom_shadow_x='-12'
picom_shadow_y='-12'
picom_blur_method='none'
picom_blur_strength='0'
bar_shadow='yes'

# Qtile
qtile_bg="$background"
qtile_abg="$accent"
qtile_afg="$background"
qtile_ibg="$altbackground"
qtile_ifg="$foreground"
qtile_ubg="$color1"
qtile_ufg="$foreground"
qtile_sfg="$color3"
qtile_acl="$accent"
qtile_ncl="$altbackground"
qtile_border='2'
qtile_margin='[8,8,8,8]'
qtile_gap_t='45'
qtile_gap_b='8'
qtile_gap_l='8'
qtile_gap_r='8'
qtile_fonts='JetBrainsMono Nerd Font'

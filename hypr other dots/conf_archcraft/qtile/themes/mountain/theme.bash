# ------------------------------------------------------------------------------
# Copyright (C) 2020-2024 Aditya Shakya <adi1090x@gmail.com>
#
# Mountain Theme
# ------------------------------------------------------------------------------

# Colors
background='#131519'
foreground='#d8d8d8'
color0='#27292D'
color1='#ec7875'
color2='#61c766'
color3='#fdd835'
color4='#42a5f5'
color5='#ba68c8'
color6='#4dd0e1'
color7='#d8d8d8'
color8='#3B3D41'
color9='#fb8784'
color10='#70d675'
color11='#ffe744'
color12='#51b4ff'
color13='#c979d7'
color14='#5cdff0'
color15='#fdf6e3'

accent='#7EAAAA'
light_value='0.05'
dark_value='0.30'

# Wallpaper
wdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
wallpaper="$wdir/wallpaper"

# Polybar
polybar_font='Iosevka Nerd Font:size=10;3'

# Rofi
rofi_font='Iosevka 10'
rofi_icon='Zafiro'

# Terminal
terminal_font_name='JetBrainsMono Nerd Font'
terminal_font_size='10'

# Geany
geany_colors='mountain.conf'
geany_font='JetBrains Mono 10'

# Appearance
gtk_font='Noto Sans 9'
gtk_theme='Kripton'
icon_theme='Zafiro'
cursor_theme='Fluent-Dark'

# Dunst
dunst_width='300'
dunst_height='80'
dunst_offset='20x56'
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
qtile_margin='[10,10,10,10]'
qtile_gap_t='46'
qtile_gap_b='10'
qtile_gap_l='10'
qtile_gap_r='10'
qtile_fonts='JetBrainsMono Nerd Font'

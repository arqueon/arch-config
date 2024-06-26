# ------------------------------------------------------------------------------
# Copyright (C) 2020-2024 Aditya Shakya <adi1090x@gmail.com>
#
# Default Theme
# ------------------------------------------------------------------------------

# Colors
background='#2e3440'
foreground='#D8DEE9'
color0='#3B4252'
color1='#BF616A'
color2='#A3BE8C'
color3='#EBCB8B'
color4='#81A1C1'
color5='#B48EAD'
color6='#88C0D0'
color7='#E5E9F0'
color8='#4C566A'
color9='#BF616A'
color10='#A3BE8C'
color11='#EBCB8B'
color12='#81A1C1'
color13='#B48EAD'
color14='#8FBCBB'
color15='#ECEFF4'

accent='#81A1C1'
light_value='0.07'
dark_value='0.30'

# Wallpaper
wdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
wallpaper="$wdir/wallpaper"

# Polybar
polybar_font='JetBrains Mono:bold:size=10;3'

# Rofi
rofi_font='JetBrainsMono Nerd Font 10'
rofi_icon='Qogir-Dark'

# Terminal
terminal_font_name='JetBrainsMono Nerd Font'
terminal_font_size='10'

# Geany
geany_colors='nordic.conf'
geany_font='JetBrains Mono 10'

# Appearance
gtk_font='Noto Sans 9'
gtk_theme='Nordic'
icon_theme='Qogir-Dark'
cursor_theme='Qogirr-Dark'

# Dunst
dunst_width='300'
dunst_height='80'
dunst_offset='20x60'
dunst_origin='top-right'
dunst_font='JetBrainsMono Nerd Font 10'
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
bar_shadow='no'

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
qtile_margin='[5,5,5,5]'
qtile_gap_t='45'
qtile_gap_b='5'
qtile_gap_l='5'
qtile_gap_r='5'
qtile_fonts='JetBrainsMono Nerd Font'

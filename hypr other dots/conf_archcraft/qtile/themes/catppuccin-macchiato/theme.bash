# ------------------------------------------------------------------------------
# Copyright (C) 2020-2024 Aditya Shakya <adi1090x@gmail.com>
#
# Catppuccin Macchiato Theme
# ------------------------------------------------------------------------------

# Colors
background='#24273A'
foreground='#CAD3F5'
color0='#494D64'
color1='#ED8796'
color2='#A6DA95'
color3='#EED49F'
color4='#8AADF4'
color5='#F5BDE6'
color6='#8BD5CA'
color7='#B8C0E0'
color8='#5B6078'
color9='#ED8796'
color10='#A6DA95'
color11='#EED49F'
color12='#8AADF4'
color13='#F5BDE6'
color14='#8BD5CA'
color15='#A5ADCB'

accent='#8AADF4'
light_value='0.05'
dark_value='0.30'

# Wallpaper
wdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
wallpaper="$wdir/wallpaper"

# Polybar
polybar_font='JetBrains Mono:size=10;3'

# Rofi
rofi_font='Iosevka 10'
rofi_icon='Arc-Circle'

# Terminal
terminal_font_name='JetBrainsMono Nerd Font'
terminal_font_size='10'

# Geany
geany_colors='catppuccin-macchiato.conf'
geany_font='JetBrains Mono 10'

# Appearance
gtk_font='Noto Sans 9'
gtk_theme='Catppuccin-Macchiato'
icon_theme='Arc-Circle'
cursor_theme='Qogirr-Dark'

# Dunst
dunst_width='300'
dunst_height='80'
dunst_offset='20x60'
dunst_origin='bottom-right'
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
qtile_margin='[5,5,5,5]'
qtile_gap_t='5'
qtile_gap_b='45'
qtile_gap_l='5'
qtile_gap_r='5'
qtile_fonts='JetBrainsMono Nerd Font'

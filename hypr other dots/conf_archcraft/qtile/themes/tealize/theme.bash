# ------------------------------------------------------------------------------
# Copyright (C) 2020-2024 Aditya Shakya <adi1090x@gmail.com>
#
# Tealize Theme
# ------------------------------------------------------------------------------

# Colors
background='#232735'
foreground='#7C84A8'
color0='#32363D'
color1='#E06B74'
color2='#98C379'
color3='#E5C07A'
color4='#62AEEF'
color5='#C778DD'
color6='#55B6C2'
color7='#ABB2BF'
color8='#50545B'
color9='#EA757E'
color10='#A2CD83'
color11='#EFCA84'
color12='#6CB8F9'
color13='#D282E7'
color14='#5FC0CC'
color15='#B5BCC9'

accent='#00A9A5'
light_value='0.05'
dark_value='0.15'

# Wallpaper
wdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
wallpaper="$wdir/wallpaper"

# Polybar
polybar_font='Iosevka Nerd Font:size=10;3'

# Rofi
rofi_font='Iosevka 10'
rofi_icon='Papirus-Apps'

# Terminal
terminal_font_name='JetBrainsMono Nerd Font'
terminal_font_size='10'

# Geany
geany_colors='tealize.conf'
geany_font='JetBrains Mono 10'

# Appearance
gtk_font='Noto Sans 9'
gtk_theme='Juno-palenight'
icon_theme='Luv-Folders-Dark'
cursor_theme='Vimix'

# Dunst
dunst_width='300'
dunst_height='80'
dunst_offset='10x46'
dunst_origin='top-right'
dunst_font='JetBrains Mono 9'
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
qtile_gap_t='41'
qtile_gap_b='5'
qtile_gap_l='5'
qtile_gap_r='5'
qtile_fonts='JetBrainsMono Nerd Font'

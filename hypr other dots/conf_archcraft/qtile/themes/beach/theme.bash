# ------------------------------------------------------------------------------
# Copyright (C) 2020-2024 Aditya Shakya <adi1090x@gmail.com>
#
# Beach Theme
# ------------------------------------------------------------------------------

# Colors
background='#141c21'
foreground='#93a1a1'
color0='#263640'
color1='#d12f2c'
color2='#819400'
color3='#b08500'
color4='#2587cc'
color5='#696ebf'
color6='#289c93'
color7='#bfbaac'
color8='#4a697d'
color9='#fa3935'
color10='#a4bd00'
color11='#d9a400'
color12='#2ca2f5'
color13='#8086e8'
color14='#33c5ba'
color15='#fdf6e3'

accent='#5294E2'
light_value='0.03'
dark_value='0.30'

# Wallpaper
wdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
wallpaper="$wdir/wallpaper"

# Polybar
polybar_font='Iosevka Nerd Font:size=10;3'

# Rofi
rofi_font='Iosevka 10'
rofi_icon='Numix-Apps'

# Terminal
terminal_font_name='JetBrainsMono Nerd Font'
terminal_font_size='10'

# Geany
geany_colors='beach.conf'
geany_font='JetBrains Mono 10'

# Appearance
gtk_font='Noto Sans 9'
gtk_theme='Arc'
icon_theme='Arc-Circle'
cursor_theme='Future'

# Dunst
dunst_width='300'
dunst_height='80'
dunst_offset='20x58'
dunst_origin='bottom-right'
dunst_font='Iosevka 10'
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
qtile_gap_t='10'
qtile_gap_b='48'
qtile_gap_l='10'
qtile_gap_r='10'
qtile_fonts='JetBrainsMono Nerd Font'

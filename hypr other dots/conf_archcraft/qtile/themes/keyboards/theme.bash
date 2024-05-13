# ------------------------------------------------------------------------------
# Copyright (C) 2020-2024 Aditya Shakya <adi1090x@gmail.com>
#
# Keyboards Theme
# ------------------------------------------------------------------------------

# Colors
background='#1d1f28'
foreground='#fdfdfd'
color0='#282a36'
color1='#f37f97'
color2='#5adecd'
color3='#f2a272'
color4='#8897f4'
color5='#c574dd'
color6='#79e6f3'
color7='#fdfdfd'
color8='#414458'
color9='#ff4971'
color10='#26CDB8'
color11='#ff8037'
color12='#556fff'
color13='#b043d1'
color14='#3fdcee'
color15='#bebec1'

accent='#C50ED2'
elements_bg='#0B0D13'

light_value='0.20'
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
geany_colors='keyboards.conf'
geany_font='JetBrains Mono 10'

# Appearance
gtk_font='Noto Sans 9'
gtk_theme='Sweet-Dark'
icon_theme='Zafiro-Purple'
cursor_theme='Sweet'

# Dunst
dunst_width='300'
dunst_height='80'
dunst_offset='25x25'
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
qtile_margin='[5,5,5,5]'
qtile_gap_t='5'
qtile_gap_b='39'
qtile_gap_l='5'
qtile_gap_r='5'
qtile_fonts='JetBrainsMono Nerd Font'

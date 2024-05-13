#!/usr/bin/env bash

## Copyright (C) 2020-2024 Aditya Shakya <adi1090x@gmail.com>
##
## Script To Apply Themes

## Theme ------------------------------------
QDIR="$HOME/.config/qtile"
TDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
THEME="${TDIR##*/}"

source "$QDIR"/themes/"$THEME"/theme.bash
altbackground="`pastel color $background | pastel lighten $light_value | pastel format hex`"
altforeground="`pastel color $foreground | pastel darken $dark_value | pastel format hex`"

## Directories ------------------------------
PATH_CONF="$HOME/.config"
PATH_GEANY="$PATH_CONF/geany"
PATH_QTILE="$PATH_CONF/qtile"
PATH_TERM="$PATH_QTILE/alacritty"
PATH_PBAR="$PATH_QTILE/themes/$THEME/polybar"
PATH_ROFI="$PATH_QTILE/themes/$THEME/rofi"

## Wallpaper ---------------------------------
apply_wallpaper() {
	sed -i -e "s#WALLPAPER=.*#WALLPAPER='$wallpaper'#g" ${PATH_QTILE}/themes/wallpaper.sh
	
	# Apply Wallpaper
	bash ${PATH_QTILE}/themes/wallpaper.sh
}

## Polybar -----------------------------------
apply_polybar() {
	# modify polybar launch script
	sed -i -e "s/STYLE=.*/STYLE=\"$THEME\"/g" ${PATH_QTILE}/themes/polybar.sh

	# apply default theme fonts
	sed -i -e "s/font-0 = .*/font-0 = \"$polybar_font\"/g" ${PATH_PBAR}/config.ini

	# rewrite colors file
	cat > ${PATH_PBAR}/colors.ini <<- EOF
		[color]
		
		BACKGROUND = ${background}
		FOREGROUND = ${foreground}
		ALTBACKGROUND = ${altbackground}
		ALTFOREGROUND = ${altforeground}
		ACCENT = ${accent}
		
		BLACK = ${color0}
		RED = ${color1}
		GREEN = ${color2}
		YELLOW = ${color3}
		BLUE = ${color4}
		MAGENTA = ${color5}
		CYAN = ${color6}
		WHITE = ${color7}
		ALTBLACK = ${color8}
		ALTRED = ${color9}
		ALTGREEN = ${color10}
		ALTYELLOW = ${color11}
		ALTBLUE = ${color12}
		ALTMAGENTA = ${color13}
		ALTCYAN = ${color14}
		ALTWHITE = ${color15}
	EOF

	# Restart Polybar
	bash ${PATH_QTILE}/themes/polybar.sh
}

# Rofi --------------------------------------
apply_rofi() {
	# modify rofi scripts
	sed -i -e "s/STYLE=.*/STYLE=\"$THEME\"/g" \
		${PATH_QTILE}/scripts/rofi_askpass \
		${PATH_QTILE}/scripts/rofi_asroot \
		${PATH_QTILE}/scripts/rofi_bluetooth \
		${PATH_QTILE}/scripts/rofi_launcher \
		${PATH_QTILE}/scripts/rofi_music \
		${PATH_QTILE}/scripts/rofi_powermenu \
		${PATH_QTILE}/scripts/rofi_runner \
		${PATH_QTILE}/scripts/rofi_screenshot \
		${PATH_QTILE}/scripts/rofi_themes
	
	# apply default theme fonts
	sed -i -e "s/font:.*/font: \"$rofi_font\";/g" ${PATH_ROFI}/shared/fonts.rasi

	# rewrite colors file
	cat > ${PATH_ROFI}/shared/colors.rasi <<- EOF
		* {
		    background:     ${background};
		    background-alt: ${altbackground};
		    foreground:     ${foreground};
		    selected:       ${accent};
		    active:         ${color2};
		    urgent:         ${color1};
		}
	EOF

	# modify icon theme
	if [[ -f "$PATH_CONF"/rofi/config.rasi ]]; then
		sed -i -e "s/icon-theme:.*/icon-theme: \"$rofi_icon\";/g" ${PATH_CONF}/rofi/config.rasi
	fi
}

# Network Menu ------------------------------
apply_netmenu() {
	if [[ -f "$PATH_QTILE"/themes/networkmenu_config.ini ]]; then
		sed -i -e "s#dmenu_command = .*#dmenu_command = rofi -dmenu -theme $PATH_ROFI/networkmenu.rasi#g" ${PATH_QTILE}/themes/networkmenu_config.ini
	fi
}

# Terminal ----------------------------------
apply_terminal() {
	# alacritty : fonts
	sed -i ${PATH_TERM}/fonts.toml \
		-e "s/family = .*/family = \"$terminal_font_name\"/g" \
		-e "s/size = .*/size = $terminal_font_size/g"

	# alacritty : colors
	cat > ${PATH_TERM}/colors.toml <<- _EOF_
		## Colors configuration
		[colors.primary]
		background = "${background}"
		foreground = "${foreground}"
		
		[colors.normal]
		black   = "${color0}"
		red     = "${color1}"
		green   = "${color2}"
		yellow  = "${color3}"
		blue    = "${color4}"
		magenta = "${color5}"
		cyan    = "${color6}"
		white   = "${color7}"
		
		[colors.bright]
		black   = "${color8}"
		red     = "${color9}"
		green   = "${color10}"
		yellow  = "${color11}"
		blue    = "${color12}"
		magenta = "${color13}"
		cyan    = "${color14}"
		white   = "${color15}"
	_EOF_
}

# Geany -------------------------------------
apply_geany() {
	sed -i ${PATH_GEANY}/geany.conf \
		-e "s/color_scheme=.*/color_scheme=$geany_colors/g" \
		-e "s/editor_font=.*/editor_font=$geany_font/g"
}

# Appearance --------------------------------
apply_appearance() {
	XFILE="$PATH_QTILE/xsettingsd"
	GTK2FILE="$HOME/.gtkrc-2.0"
	GTK3FILE="$PATH_CONF/gtk-3.0/settings.ini"

	# apply gtk theme, icons, cursor & fonts
	if [[ `pidof xsettingsd` ]]; then
		sed -i -e "s|Net/ThemeName .*|Net/ThemeName \"$gtk_theme\"|g" ${XFILE}
		sed -i -e "s|Net/IconThemeName .*|Net/IconThemeName \"$icon_theme\"|g" ${XFILE}
		sed -i -e "s|Gtk/CursorThemeName .*|Gtk/CursorThemeName \"$cursor_theme\"|g" ${XFILE}
	else
		sed -i -e "s/gtk-font-name=.*/gtk-font-name=\"$gtk_font\"/g" ${GTK2FILE}
		sed -i -e "s/gtk-theme-name=.*/gtk-theme-name=\"$gtk_theme\"/g" ${GTK2FILE}
		sed -i -e "s/gtk-icon-theme-name=.*/gtk-icon-theme-name=\"$icon_theme\"/g" ${GTK2FILE}
		sed -i -e "s/gtk-cursor-theme-name=.*/gtk-cursor-theme-name=\"$cursor_theme\"/g" ${GTK2FILE}
		
		sed -i -e "s/gtk-font-name=.*/gtk-font-name=$gtk_font/g" ${GTK3FILE}
		sed -i -e "s/gtk-theme-name=.*/gtk-theme-name=$gtk_theme/g" ${GTK3FILE}
		sed -i -e "s/gtk-icon-theme-name=.*/gtk-icon-theme-name=$icon_theme/g" ${GTK3FILE}
		sed -i -e "s/gtk-cursor-theme-name=.*/gtk-cursor-theme-name=$cursor_theme/g" ${GTK3FILE}
	fi
	
	# inherit cursor theme
	if [[ -f "$HOME"/.icons/default/index.theme ]]; then
		sed -i -e "s/Inherits=.*/Inherits=$cursor_theme/g" "$HOME"/.icons/default/index.theme
	fi

	# Restart xsettingsd
	if [[ `pidof xsettingsd` ]]; then
		pkill xsettingsd && xsettingsd --config="$XFILE" &
	fi
}

# Dunst -------------------------------------
apply_dunst() {
	# modify dunst config
	sed -i ${PATH_QTILE}/dunstrc \
		-e "s/width = .*/width = $dunst_width/g" \
		-e "s/height = .*/height = $dunst_height/g" \
		-e "s/offset = .*/offset = $dunst_offset/g" \
		-e "s/origin = .*/origin = $dunst_origin/g" \
		-e "s/font = .*/font = $dunst_font/g" \
		-e "s/frame_width = .*/frame_width = $dunst_border/g" \
		-e "s/separator_height = .*/separator_height = $dunst_separator/g" \
		-e "s/line_height = .*/line_height = $dunst_separator/g"

	# modify colors
	sed -i '/urgency_low/Q' ${PATH_QTILE}/dunstrc
	cat >> ${PATH_QTILE}/dunstrc <<- _EOF_
		[urgency_low]
		timeout = 2
		background = "${background}"
		foreground = "${foreground}"
		frame_color = "${altbackground}"

		[urgency_normal]
		timeout = 5
		background = "${background}"
		foreground = "${foreground}"
		frame_color = "${altbackground}"

		[urgency_critical]
		timeout = 0
		background = "${background}"
		foreground = "${color1}"
		frame_color = "${color1}"
	_EOF_

	# Restart Dunst
	bash ${PATH_QTILE}/scripts/qtile_dunst
}

# Compositor --------------------------------
apply_compositor() {
	picom_cfg="$PATH_QTILE/picom.conf"

	# modify picom config
	sed -i "$picom_cfg" \
		-e "s/backend = .*/backend = \"$picom_backend\";/g" \
		-e "s/corner-radius = .*/corner-radius = $picom_corner;/g" \
		-e "s/shadow-radius = .*/shadow-radius = $picom_shadow_r;/g" \
		-e "s/shadow-opacity = .*/shadow-opacity = $picom_shadow_o;/g" \
		-e "s/shadow-offset-x = .*/shadow-offset-x = $picom_shadow_x;/g" \
		-e "s/shadow-offset-y = .*/shadow-offset-y = $picom_shadow_y;/g" \
		-e "s/method = .*/method = \"$picom_blur_method\";/g" \
		-e "s/strength = .*/strength = $picom_blur_strength;/g"

	# Enable/Disable polybar shadow
	if [[ "$bar_shadow" == 'yes' ]]; then
		if [[ ! `cat $picom_cfg | grep "#\"class_g ?= 'Polybar'\""` ]]; then
			# enable shadow
			sed -i -e "s|\"class_g ?= 'Polybar'\"|#\"class_g ?= 'Polybar'\"|g" ${picom_cfg}
		fi
	else
		if [[ `cat $picom_cfg | grep "#\"class_g ?= 'Polybar'\""` ]]; then
			# disable shadow
			sed -i -e "s|#\"class_g ?= 'Polybar'\"|\"class_g ?= 'Polybar'\"|g" ${picom_cfg}
		fi
	fi
}

# Qtile -------------------------------------
apply_qtile() {
	# modify i3theme file
	sed -i ${PATH_QTILE}/config.py \
		-e "s/var_bg_color = .*/var_bg_color = '$qtile_bg'/g" \
		-e "s/var_active_bg_color = .*/var_active_bg_color = '$qtile_abg'/g" \
		-e "s/var_active_fg_color = .*/var_active_fg_color = '$qtile_afg'/g" \
		-e "s/var_inactive_bg_color = .*/var_inactive_bg_color = '$altbackground'/g" \
		-e "s/var_inactive_fg_color = .*/var_inactive_fg_color = '$qtile_ifg'/g" \
		-e "s/var_urgent_bg_color = .*/var_urgent_bg_color = '$qtile_ubg'/g" \
		-e "s/var_urgent_fg_color = .*/var_urgent_fg_color = '$qtile_ufg'/g" \
		-e "s/var_section_fg_color = .*/var_section_fg_color = '$qtile_sfg'/g" \
		-e "s/var_active_color = .*/var_active_color = '$qtile_acl'/g" \
		-e "s/var_normal_color = .*/var_normal_color = '$altbackground'/g" \
		\
		-e "s/var_border_width = .*/var_border_width = $qtile_border/g" \
		-e "s/var_margin = .*/var_margin = $qtile_margin/g" \
		-e "s/var_gap_top = .*/var_gap_top = $qtile_gap_t/g" \
		-e "s/var_gap_bottom = .*/var_gap_bottom = $qtile_gap_b/g" \
		-e "s/var_gap_left = .*/var_gap_left = $qtile_gap_l/g" \
		-e "s/var_gap_right = .*/var_gap_right = $qtile_gap_r/g" \
		-e "s/var_font_name = .*/var_font_name = '$qtile_fonts'/g"

	# restart i3wm
	qtile cmd-obj -o cmd -f reload_config
}

# Create Theme File -------------------------
create_file() {
	theme_file="$PATH_QTILE/themes/.current"
	if [[ ! -f "$theme_file" ]]; then
		touch ${theme_file}
	fi
	echo "$THEME" > ${theme_file}
}

# Notify User -------------------------------
notify_user() {
	dunstify -u normal -h string:x-dunst-stack-tag:applytheme -i /usr/share/archcraft/icons/dunst/themes.png "Applying Style : $THEME"
}

## Execute Script ---------------------------
notify_user
create_file
apply_wallpaper
apply_polybar
apply_rofi
apply_netmenu
apply_terminal
apply_geany
apply_appearance
apply_dunst
apply_compositor
apply_qtile

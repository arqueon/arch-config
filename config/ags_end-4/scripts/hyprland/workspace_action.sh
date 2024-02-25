#!/usr/bin/env bash
hyprctl dispatch "$1" $(((($(hyprctl focusworkspaceoncurrentmonitor -j | gojq -r .id) - 1)  / 10) * 10 + $2))

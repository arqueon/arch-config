import Variable from 'resource:///com/github/Aylur/ags/variable.js';
import Mpris from 'resource:///com/github/Aylur/ags/service/mpris.js';
const { exec } = Utils;
import Gdk from 'gi://Gdk';

// Global vars for external control (through keybinds)
export const showMusicControls = Variable(false, {})
export const showColorScheme = Variable(false, {})
globalThis['openMusicControls'] = showMusicControls;
globalThis['openColorScheme'] = showColorScheme;
globalThis['mpris'] = Mpris;

// Screen size
export const SCREEN_WIDTH = Number(exec(`bash -c "xrandr --current | grep '*' | uniq | awk '{print $1}' | cut -d 'x' -f1 | head -1" | awk '{print $1}'`));
export const SCREEN_HEIGHT = Number(exec(`bash -c "xrandr --current | grep '*' | uniq | awk '{print $1}' | cut -d 'x' -f2 | head -1" | awk '{print $1}'`));


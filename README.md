<p align="center"><img width="50%" src="https://github.com/ljmill/dotfiles/blob/main/assets/main.png"/></p>

### Note:
This rice was designed with my color scheme in mind: [Quixotic Color Scheme](https://www.github.com/QuixoticCS)--which is where you will find the configurations for many of the theme elements such as VSCode, GTK, icons, wallpaper, etc. 

I would love to spread and grow this color scheme so feel free to join the [Discord](https://discord.gg/p9E32PkXE5)!

### Requirements for the bar:
1. `BSPWM` as the window manager

2. `Eww Widgets` for the bar

3. `Rofi` is used as an application launcher

4. `xdotool` is used to grab window titles

5. `bsp-layout` is used to change the tiling mode per desktop

### Tips & Tricks:
1. The widgets were designed to work with bspwm workspaces. Make sure to define the workspace numbers within `eww/quixotic/scripts/workspace-primary` to reflect what is configured in your `bspwmrc` configuration.

2. Many of the eww-related scripts require specific paths for the eww binary and eww configuration directory which will likely differ from system to system. Test and inspect each file/script to determine where changes need to be made.

3. To change the color of the rofi and layout buttons located on the Eww bar, edit the value of the variable "color" within eww.yuck. Options are: red, blue, green

4. To change the background gradient of the widgets, edit the primary and secondary colors located in theme.scss. Options are: red, green, pink, blue, purple, cyan

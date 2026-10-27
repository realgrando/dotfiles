-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
hl.on("hyprland.start", function ()
    hl.exec_cmd("/home/asce/.local/bin/start-lan-mouse.sh")
    hl.exec_cmd("bash ~/.config/waybar/launch.sh")
    hl.exec_cmd("vicinae server")
    --- hl.exec_cmd("swaync")
    hl.exec_cmd("awww-daemon")
    hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")

end)

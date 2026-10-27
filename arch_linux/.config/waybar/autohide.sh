#!/bin/bash
# O script agora é 100% à prova de balas.
# Ele pergunta ao próprio Hyprland se a barra está visível (camada superior) ou escondida (camada inferior).

is_waybar_visible() {
    hyprctl layers | grep -A 3 "Layer level 2 (top):" | grep -q "namespace: waybar"
    return $?
}

while true; do
    pos=$(hyprctl cursorpos 2>/dev/null)
    y=$(echo "$pos" | cut -d',' -f2 | tr -d ' ')
    
    if [ -z "$y" ]; then
        sleep 0.1
        continue
    fi
    
    if [ "$y" -lt 15 ]; then
        if ! is_waybar_visible; then
            killall -SIGUSR1 waybar 2>/dev/null
        fi
    elif [ "$y" -gt 60 ]; then
        if is_waybar_visible; then
            killall -SIGUSR1 waybar 2>/dev/null
        fi
    fi
    sleep 0.1
done

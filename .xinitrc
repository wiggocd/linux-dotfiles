# nohup sh -c "sleep 5; ps -C kwin_x11 > /dev/null || ps -C kwin_wayland > /dev/null" > /dev/null || export QT_QPA_PLATFORMTHEME=qt5ct
# nohup sh -c "sleep 5; ps -C startplasma-x11 > /dev/null || ps -C startplasma-wayland > /dev/null" > /dev/null || export QT_QPA_PLATFORMTHEME=qt5ct
# nohup sh -c "~/scripts/check_wm.sh" > /dev/null &

export QT_QPA_PLATFORMTHEME=qt5ct

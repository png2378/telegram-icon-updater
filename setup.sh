#!/bin/bash
# 'Telegram Icon Updater' Setup Script

TELEDIR=~/.TelegramDesktop/tdata/ticons
[[ $1 == "--install" ]] && { [[ -d $TELEDIR ]] && { rm -rf $TELEDIR; }; mkdir -p $TELEDIR; cp -f ./icons/*.png $TELEDIR; for((i = 2; i < 999; i++)); do ln -s $TELEDIR/ico_22_1.png $TELEDIR/ico_22_$i.png; ln -s $TELEDIR/icomute_22_1.png $TELEDIR/icomute_22_$i.png; done; exit 0; }
[[ $1 == "--remove" ]] && { rm -rf $TELEDIR; exit 0; }
echo "[ERROR] Please use --install or --remove."; exit 1;

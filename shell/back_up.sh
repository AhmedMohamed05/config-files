#!/bin/bash

back_up_dir_path="/home/ahmed/repos/config-files/"

cp -vr ~/.config/i3/ $back_up_dir_path
cp -vr ~/.config/alacritty/ $back_up_dir_path
cp -vr ~/.config/rofi/ $back_up_dir_path
cp -vr ~/.config/nvim/ $back_up_dir_path
cp -vr ~/.config/picom/ $back_up_dir_path
cp -vr ~/.config/polybar/ $back_up_dir_path
cp -vr ~/.config/redshift $back_up_dir_path
cp -vr ~/shell $back_up_dir_path
cp -vr ~/.bash* $back_up_dir_path
cp -vr ~/.inputrc $back_up_dir_path
cp -vr ~/.token.txt $back_up_dir_path
cp -vr /usr/share/backgrounds/ $back_up_dir_path

current_date=$(date +%Y-%M-%d)

cd ~/repos/config-files

lsd -l

git add *

git commit -m "$current_date"

git push origin main 

#setting up bspwm

sudo pacman -S ttf-jetbrains-mono-nerd ttf-fira-code starship alacritty mpv feh ueberzug ranger thunar polybar --noconfirm --needed

mv -v config/alacritty ../.config/
mv -v config/starship.toml ../.config/
mkdir ../Downloads
mkdir ../Desktop
mkdir ../Pictures
mkdir ../.config/polybar
mv -v Pictures ../
mv -v polybar ../.config/
ranger --copy-config=all
rm .config/ranger/rc.conf
mv config/ranger/rc.conf ../.config/ranger
feh --bg-scale ../Pictures/tianshu-liu-SBK40fdKbAg-unsplash.jpg
sed -i '53i ~/.fehbg &' ~/.xinitrc
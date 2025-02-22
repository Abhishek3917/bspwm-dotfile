#setting up bspwm

sudo pacman -S ttf-jetbrains-mono-nerd ttf-fira-code starship alacritty mpv feh ueberzug ranger thunar polybar zsh-syntax-highlighting zsh-autosuggestions chromium zsh --noconfirm --needed
chsh -l
echo "set default shell"
read -r SHELL
chsh -s $SHELL
mv -v config/alacritty ../.config/
mv -v config/starship.toml ../.config/
mkdir ../Downloads
mkdir ../Desktop
mkdir ../Pictures
mkdir ../.config/polybar
mv -v Pictures ../
mv -v config/polybar ../.config/
mv -v config/sxhkd/sxhkdrc ../.config/sxhkd/
mv -v config/bspwm/bspwmrc ../.config/bspwm/
chmod +x ../.config/bspwm/bspwmrc
chmod +x ../.config/sxhkd/sxhkdrc
chmod +x ../.config/polybar/launch.sh
ranger --copy-config=all
rm .config/ranger/rc.conf
mv -v config/ranger/rc.conf ../.config/ranger
sed -i '53i ~/.fehbg &' ~/.xinitrc
mv -v .zshrc ../
rm -r ../bspwm-dotfile

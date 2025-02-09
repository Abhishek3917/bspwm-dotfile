#setting up bspwm

sudo pacman -S ttf-jetbrains-mono-nerd ttf-fira-code starship alacritty mpv --noconfirm --needed

mv -v config/alacritty ../.config/
cp -v config/starship.toml ../.config/
mkdir ../Downloads
mkdir ../Desktop
mkdir ../Pictures
mv -v Pictures ../
#setting up bspwm

sudo pacman -S ttf-jetbrains-mono-nerd ttf-fira-code  --noconfirm --needed

cp -v config/alacritty ../.config/
cp -v config/starship.toml ../.config/
mkdir ../Downloads
mkdir ../Desktop
mkdir ../Pictures
cp -v Pictures ../
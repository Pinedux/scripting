sudo apt-get update -y &&
sudo apt-get install -y sddm &&
sudo apt-get install -y kde-full &&
sudo apt-get install -y awesome &&
sudo apt-get install -y sxhkd &&
sudo apt-get install -y git &&
sudo apt-get install -y gdebi &&
git clone --recurse-submodules --remote-submodules --depth 1 -j 2 https://github.com/lcpz/awesome-copycats.git
mv -bv awesome-copycats/{*,.[^.]*} ~/.config/awesome; rm -rf awesome-copycats &&
cd ~/.config/awesome &&
cp rc.lua.template rc.lua &&
sudo apt install dmenu rofi alsa-utils pamixer qasconfig mpc scrot unclutter xbacklight xsel slock &&
distro=$(if echo " bullseye focal impish jammy uma una vanessa" | grep -q " $(lsb_release -sc) "; then echo $(lsb_release -sc); else echo focal; fi)

wget -O- https://deb.librewolf.net/keyring.gpg | sudo gpg --dearmor -o /usr/share/keyrings/librewolf.gpg

sudo tee /etc/apt/sources.list.d/librewolf.sources << EOF > /dev/null
Types: deb
URIs: https://deb.librewolf.net
Suites: $distro
Components: main
Architectures: amd64
Signed-By: /usr/share/keyrings/librewolf.gpg
EOF

sudo apt update -y

sudo apt install librewolf -y &&
sudo apt install -y nodejs python3 python2 &&
sudo apt-get install -y python3-pip &&
sudo pip3 install pynvim &&
sudo apt install -y cargo &&
sudo apt install -y ruby &&
sudo add-apt-repository ppa:neovim-ppa/unstable &&
sudo apt install -y neovim &&
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh) &&
sudo apt-get install -y zsh &&
sudo chsh -s $(which zsh) &&
curl -sS https://starship.rs/install.sh | sh &&
eval "$(starship init zsh)" >> ~/.zshrc










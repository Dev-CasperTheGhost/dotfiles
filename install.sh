sudo apt-get update

sudo apt-get upgrade -y

# install git
sudo apt install git

echo "\nINFO: Installed git\n"

# install nodejs v16
cd ~
curl -sL https://deb.nodesource.com/setup_16.x -o nodesource_setup.sh

sudo bash nodesource_setup.sh

sudo apt install nodejs -y

cd ~ && rm -f nodesource_setup.sh

echo "\nINFO: Installed node and npm\n"

# check the version
node -v
npm -v

# install yarn

sudo npm i -g yarn

echo "\nINFO: Installed yarn\n"

# install zsh
sudo apt install zsh

chsh -s $(which zsh)

# oh-my-zsh
sh -c "$(wget -qO- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "\nINFO: Installed oh-my-zsh\n"

# build essentials
sudo apt install build-essential
sudo apt-get install gcc g++ make

echo "\nINFO: Installed build-essential\n"

# clone zsh stuff
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# setup .zshrc stuff
cd ~

git clone git@github.com:Dev-CasperTheGhost/dotfiles.git

cd dotfiles && mv .zshrc ~/.zshrc

cd ~ && rm -rf dotfiles

echo "\nINFO: Installed correct .zshrc\n"
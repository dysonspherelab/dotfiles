## update the system packages
sudo apt-get update

## install git, fish
sudo apt-get install git, fish

## set default shell to fish
chsh -s /usr/local/bin/fish

## install oh my fish
curl -L https://get.oh-my.fish | fish

## install docker-ce
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update

sudo apt-get install docker-ce

sudo docker run hello-world

## install docker compose
sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

docker-compose --version

## move the tmux config file to its location ~/.tmux.config 
cp ./.tmux.conf ~/.tmux.conf
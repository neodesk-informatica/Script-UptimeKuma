#------------------------------------------------
#  INSTALACAO DO UPTIME KUMA
#------------------------------------------------

echo "#------------------------------------------#"
echo           "Atualizando Sistema" 
echo "#------------------------------------------#"

export DEBIAN_FRONTEND=noninteractive && apt update && apt -y install apache2 && a2enmod rewrite

clear
echo "#------------------------------------------#"
echo           "Instalando Docker" 
echo "#------------------------------------------#"

apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg 
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
apt update
apt install docker-ce -y
docker --version
sudo usermod -aG docker ${USER}
su - ${USER}
mkdir -p ~/.docker/cli-plugins/
curl -SL https://github.com/docker/compose/releases/download/v2.27.1/docker-compose-linux-x86_64 -o ~/.docker/cli-plugins/docker-compose
chmod +x ~/.docker/cli-plugins/docker-compose
docker compose version

clear
echo "#------------------------------------------#"
echo           "Instalando Uptime Kuma" 
echo "#------------------------------------------#"
docker run -d --restart=always -p 3001:3001 -v uptime-kuma:/app/data --name uptime-kuma louislam/uptime-kuma:1

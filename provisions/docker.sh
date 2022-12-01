sudo yum check-update -- Checando atualizações na máquina
sudo yum install install -y -- Instalando as atualizações 
curl -fsSL https://get.docker.com/ | sh -- Instalação do docker
sudo systemctl start docker 
sudo systemctl enable docker

echo "Vm Ok... Docker instalado com sucesso" -- Aviso de sucesso na instalação da 2ª a 3ª vms
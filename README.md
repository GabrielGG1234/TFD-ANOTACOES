# TFD - Trabalho Final de Disciplina

# Instruções (com iniciar.sh)
    - Clone o repositório
        - git clone https://github.com/GabrielGG1234/TFD.git
    - Você pode pular a maior parte dos passos executando o script inicia.sh:
        - Para rodar o mesmo use os seguintes comandos:
            - cd TFD/provisions
            - sudo chmod 777 ./*
            - ./iniciar.sh
            - cd ../banco
            - Execute: vagrant ssh
            - [NA VM]: sudo docker run -p 9090:9090 prom/prometheus &

            - cd ../front
            - Execute: vagrant ssh
            - [NA VM]: sudo docker run -d -p 3000:3000 --name grafana grafana/grafana:latest &
            
    - Acesse as dashboards do prometheus e grafana para testar
        - Acesse o prometheus (http://192.168.1.4:9090/)
        - Acesse o grafana (http://192.168.1.3:3000/)          

-----------------------------------------------------------------------------------------------------

# Passos completos:
    - Clone o repositório
        - git clone https://github.com/GabrielGG1234/TFD.git
    - Entre na pasta controle e execute: vagrant init --provision
        - Quando executado o ansible será instalado na máquina
    - Entre na pasta banco e execute: vagrant init --provision
        - Ao executar o comando o arquivo docker.sh vai efetuar a instalação do docker
        - Execute: vagrant ssh
        - [NA VM]: sudo docker run -p 9090:9090 prom/prometheus &
    - Entre na pasta front e execute: vagrant init --provision
        - Ao executar o comando o arquivo docker.sh vai efetuar a instalação do docker
        - Execute: vagrant ssh
        - [NA VM]: sudo docker run -d -p 3000:3000 --name grafana grafana/grafana:latest &

    - Acesse as dashboards do prometheus e grafana para testar
        - Acesse o prometheus (http://192.168.1.4:9090/)
        - Acesse o grafana (http://192.168.1.3:3000/)
  
-----------------------------------------------------------------------------------------------------
  
# Próximos passos  
  - [ ] Interligar a dashboard do grafana com o prometheus
  - [ ] Colocar Ansible pra monitorar os servidores de banco de dados e front-end, atualizando sempre que necessário
  
  

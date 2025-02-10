# README - Instalação Uptime Kuma

Este script realiza a instalação do **Docker** e do **Docker Compose** em um sistema baseado em **Ubuntu**. Além disso, configura um ambiente para rodar o **Uptime Kuma**, um monitor de serviços.

## 📌 Requisitos

- Ubuntu 20.04 ou superior
- Acesso root ou permissão para utilizar `sudo`

## 🚀 Passos de Instalação

1. **Atualização do sistema**  
   O script inicia atualizando os pacotes do sistema e instalando o Apache2 com suporte a `mod_rewrite`.

2. **Instalação do Docker**  
   - Adiciona o repositório oficial do Docker.  
   - Instala o Docker CE (Community Edition).  
   - Adiciona o usuário ao grupo `docker` para evitar o uso do `sudo` em cada comando.  

3. **Instalação do Docker Compose**  
   - Baixa e configura o Docker Compose v2.27.1.  

4. **Execução do Uptime Kuma**  
   - Cria um contêiner para o **Uptime Kuma** na porta `3001`.  

## 🛠 Como Usar

### 1. Clonando o Repositório
Clone este repositório para o seu servidor Ubuntu:

```bash
apt update && apt install git -y && git clone https://github.com/neodesk-informatica/Script-UptimeKuma.git
```

```bash
### 2. Tornando o Script Executável
cd Script-UptimeKuma && chmod +x install-uptimekuma.sh
```

### 3. Executando o Script

```bash
sudo ./install-uptimekuma.sh
```

## 📝 Notas

- O Apache2 é instalado, mas não é configurado para uso específico.  
- O script pode precisar de ajustes para outras versões do Ubuntu/Debian.  
- Para acessar o Uptime Kuma basta digitar o IP do servidor seguido da porta seu_ip:3001

📌 **Autor**: Ian Maralhas (NeoDesk - Informática)  
📅 **Última atualização**: 10 de Fevereiro de 2025  
🔗 **Licença**: MIT  
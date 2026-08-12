# Vaga: Analista DevOps Júnior | Korp
### Candidato:
Guilherme Almeida da Luz


**Objetivo Geral**
    
    Esse desafio visa avaliar suas habilidades com Docker, programação, redes, servidores e
    automação em ambiente Linux, por meio da construção de um serviço simples em Golang e da infraestrutura necessária para sua execução em containers, com ênfase posterior em automação com Ansible.
---

# Parte 1: Criação do Serviço e Arquitetura do Ambiente

## 1. Serviço HTTP

- [x]  **crie um servidor HTTP utilizando a linguagem Golang**
- [x]  **o serviço deve se chamar http-server-projeto-korp**
- [x]  **o serviço deve receber as requisições na porta 8080**
- [x]  **implemente um endpoint GET /projeto-korp**
- [x]  **esse endpoint deve retornar um JSON com a seguinte estrutura:**
    
    ```go
    {
    "nome": "Projeto Korp",
    "horario": "<horário_atual>"
    }
    ```
    
- [x]  **O campo <horário_atual> deve conter o horário atual em UTC, resolvido
dinamicamente a cada requisição**
- [x]  **Crie um Dockerfile para a aplicação, que atenda aos seguintes requisitos:**
    - [x]  **build**
    - [x]  **execução da aplicação em container**

## 2. Instalação e Configuração do Docker

- [x]  **Em um ambiente Linux de sua escolha, instale e configure o Docker.**

## 3. Configuração de Rede Docker

- [x]  **Crie uma rede Docker no modo bridge para comunicação entre containers.**

## 4. Docker Compose

- [ ]  Utilize Docker Compose para configurar dois containers:
    - [ ]  **Container 1: http-server-projeto-korp**
        - [ ]  Baseado na imagem construída anteriormente
        - [ ]  Conectado à rede criada
        - [ ]  Não deve expor portas diretamente ao host
    - [ ]  **Container 2: nginx**
        - [ ]  Imagem oficial do NGINX: https://hub.docker.com/_/nginx
        - [ ]  Conectado à mesma rede do serviço http-server-projeto-korp
        - [ ]  Porta 80 do host mapeada para a porta 80 do container
        - [ ]  Monte um volume no caminho /etc/nginx/conf.d/

## 5. Configuração do Proxy Reverso

- [ ]  No volume montado, adicione o arquivo http-server-projeto-korp.conf com a
configuração de proxy reverso
- [ ]  O NGINX deverá encaminhar requisições feitas à http://localhost:80 para o serviço na porta 8080

## 6. Teste de Funcionamento

- [ ]  Teste o ambiente com o comando:
    
    ```bash
    curl http://localhost:80/projeto-korp
    ```
    
- [ ]  A resposta esperada é o JSON gerado pelo http-server-projeto-korp:
    ```go
    {
    "nome": "Projeto Korp",
    "horario": "<horário_atual>"
    }
    ```
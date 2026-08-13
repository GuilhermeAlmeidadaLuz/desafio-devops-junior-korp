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

- [x]  Utilize Docker Compose para configurar dois containers:
    - [x]  **Container 1: http-server-projeto-korp**
        - [x]  Baseado na imagem construída anteriormente
        - [x]  Conectado à rede criada
        - [x]  Não deve expor portas diretamente ao host
    - [x]  **Container 2: nginx**
        - [x]  Imagem oficial do NGINX: https://hub.docker.com/_/nginx
        - [x]  Conectado à mesma rede do serviço http-server-projeto-korp
        - [x]  Porta 80 do host mapeada para a porta 80 do container
        - [x]  Monte um volume no caminho /etc/nginx/conf.d/

## 5. Configuração do Proxy Reverso

- [x]  No volume montado, adicione o arquivo http-server-projeto-korp.conf com a
configuração de proxy reverso
- [x]  O NGINX deverá encaminhar requisições feitas à http://localhost:80 para o serviço na porta 8080

## 6. Teste de Funcionamento

- [x]  Teste o ambiente com o comando:
    
    ```bash
    curl http://localhost:80/projeto-korp
    ```
    
- [x]  A resposta esperada é o JSON gerado pelo http-server-projeto-korp:
    ```go
    {
    "nome": "Projeto Korp",
    "horario": "<horário_atual>"
    }
    ```

---

# Parte 2: Monitoramento e Observabilidade

> #### O objetivo dessa etapa é adicionarmos monitoramento ao serviço http-server-projeto-korp.

- **As seguintes métricas são obrigatórias:**
    - [ ]  **disponibilidade do serviço**
    - [ ]  **volume de requisições**

> #### A forma de expor a disponibilidade do serviço pode ser definida pelo candidato (ex: métrica, endpoint dedicado, etc.). As métricas deverão ser expostas utilizando o padrão do Prometheus.

## **Visualização das métricas**

#### Altere o arquivo compose desenvolvido na Etapa 1 para que contenha os containers:

- [ ]  **Grafana**
- [ ]  **Prometheus**

## Requisitos

- [ ]  prometheus configurado para coletar as métricas expostas pelo serviço
- [ ]  grafana configurado para visualizar essas métricas
- [ ]  disponibilize um dashboard no Grafana que permita analisar o comportamento do
serviço
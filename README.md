# HTTP Server em Golang/Gin Gonic

Serviço em Golang utilizando o framework Gin Gonic e Docker/Docker Compose para aplicar conceitos e ferramentas da cultura DevOps. O desafio proposto visa a execução em containers e automação de processos.

> :flag-us: 🇺🇸 Service in Golang using Gin Gonic framework and Docker/Docker Compose for apply DevOps Culture concepts and tools. The challenge aims to run in containers and automate process.
> You can view the [ENGLISH-README.md](./ENGLISH-README.md) for follow the steps to run.

## Informação

- **Título**: HTTP Server em Golang/Gin Gonic
- **Version**: 1.0
- **Host**: localhost:80

## Pré-requisitos

Antes de começar, tenha certeza que você possui os seguintes pré-requisitos instalados em seu sistema:

- [Go](https://go.dev/doc/install): Liguagem de Programação Go. Necessária para execução e compilação de arquivos com extensão ```.go```
- [Docker](https://docs.docker.com/get-started/get-docker/): Necessário para execução da aplicação dentro de um container (```ambiente isolado com os pré-requisitos já garantidos```)

## Instalação

Siga os passos abaixo para instalar o projeto em seu ambiente de desenvolvimento:

1. **Clone o repositório:**

    ```bash
        git clone https://github.com/GuilhermeAlmeidadaLuz/desafio-devops-junior-korp.git
    ```
2. **Navegue para a pasta/diretório do projeto**
    ```bash
        cd desafio-devops-junior-korp
    ```
3. **Build (Construção) da aplicação usando Docker Compose:**
    ```bash
        docker compose up 
        # faz o build (construção a partir das imagens) e inicia todos os containers necessários para a aplicação funcionar
    ```

## Parte 1:
### Testando a aplicação

1. **Usando [curl](https://curl.se/docs/tutorial.html) para acessar o endpoint:**

    ```bash
        curl http://localhost:80/projeto-korp
    ```
2. **Usando o navegador para acessar o endpoint:**
    
    - Digite na url `http://localhost:80/projeto-korp`

3. **Resultado esperado:**
    ```bash
        {
        "nome": "Projeto Korp",
        "horario": "<horário_atual>"
        }
    ```

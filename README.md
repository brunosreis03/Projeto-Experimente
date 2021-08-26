# Experimente

<!--ts-->
   * [Sobre o projeto](#-sobre-o-projeto)
   * [Como utilizar o projeto](#-como-utilizar-o-projeto)
     * [Pré-requisitos](#pré-requisitos)
   * [Cenarios automatizados](#-cenarios-automatizados)
   * [Tecnologias](#-tecnologias)
<!--te-->

## 💻 Sobre o projeto
<p>Projeto de automação de testes web e api no portal Experimente, do grupo Ser Educacional.</p>

## 🚀 Como utilizar o projeto
1 - Clonar o projeto pra maquina: <br>
git clone https://github.com/automacaotruechange/Experimente <br>
2 - Acessar o Visual Studio Code <br>
3 - Selecionar o workspace(pode ser a pasta onde foi clonado o repositorio) <br>
4 - No VS Code ir em File > Open Folder > e selecionar a pasta onde esta todo o projeto <br>
5 - No Console emulator, entrar na pasta do projeto através do comando "cd C:\Local onde o projeto se encontra (Ex: C:\Users\Bruno Reis\Desktop\Experimente\api)" <br>
6 - Para os projetos Web, utilizar o comando "cucumber features\specs\nome_do_arquivo.feature" para rodar um arquivo específico ou "cucumber" para rodar todos os cenários. <br>
7 - Para os projetos api, utilizar o comando "rspec spec\scenarios\nome_do_arquivo.rb" para rodar um arquivo específico ou "rspec" para rodar todos os cenários. <br>

## Pré-requisitos
- Possuir o VS Code instalado na máquina: https://code.visualstudio.com/download
- Possuir o JDK instalado na maquina: https://www.oracle.com/br/java/technologies/javase-jdk11-downloads.html
- Possuir o GIT instalado na máquina
- Possuir o Console Emulator instalado na máquina e funcional (CMDER)
- Instalar os frameworks necessários assim como as ruby gems citadas abaixo
  
## ⚙️ Cenarios automatizados
<b>Funcionalidades: Funcionalidade básica do portal, Login, Logout, Cadastro de cursos, Cadastro de Cursos Faculdade tanto web quanto api.</b><br>

## 🛠 Tecnologias e Gems
- Ruby
(https://rubygems.org)
- Cucumber
- Capybara
- SeleniumWebDriver
- Biblioteca Faker
- Rspec
- HTTParty

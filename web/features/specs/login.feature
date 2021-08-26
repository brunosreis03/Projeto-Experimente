# language: pt

Funcionalidade: Login, Função e Logout S8K-18
  Como um usuário do portal
  Gostaria de poder logar e deslogar livremente
  Para verificar a funcionalidade básica do portal

  Cenario: Login Válido

    Dado que esteja na página do Experimente
    Quando submeto minhas credenciais com:
      |   tenant  |  <tenant>  |
      | username  | <username> |
      | password  | <password> | 
    Então vejo o dashboard
    E que eu deslogue da minha conta
    Então vejo a página de login

    Exemplos:
      |  tenant   |  username  | password | 
      | UNINASSAU | bruno.reis | mudar123 |
      |   Unama   | bruno.reis | mudar123 |
    

  Cenario: Tentativa de Login

    Dado que esteja na página do Experimente
    Quando submeto minhas credenciais com:
      |   tenant  |  <tenant>  |
      | username  | <username> |
      | password  | <password> | 
    Então vejo a mensagem: "<mensagem>"

    Exemplos:
      |  tenant   |  username  | password |           mensagem            |
      | UNINASSAU | bruno.reis | mudar124 | Invalid username or password. |
      |   Unama   | bruno.reir | mudar123 | Invalid username or password. |
      | UNINABUCO | bruno.reis |          |         Required field!       |
      | UNINASSAU |            | mudar123 |         Required field!       |



  
   
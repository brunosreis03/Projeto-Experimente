# language: pt

Funcionalidade: Cadastro de Curso Faculdade S8K-28
  Como um usuário do portal Experimente
  Gostaria de poder cadastrar um curso faculdade
  Para verificar a funcionalidade do portal

  Contexto: Acesso ao módulo Serasa
    * Login com:
      |  tenant   |  username  | password |
      | UNINORTE  | bruno.reis | mudar123 |

  Cenario: Cadastro de Curso Faculdade válido

    Dado que eu vá para a pagina de cadastro de cursos faculdades 
    Quando cadastro um curso faculdade
    Então vejo se o curso foi salvo com sucesso e altero os status dos cursos

  Cenario: Tentativa de Cadastro de Curso Faculdade 

    Dado que eu vá para a pagina de cadastro de cursos faculdades 
    Quando não preencho os campos "<disciplina>" ou "<select_curso>"
    Então vejo a mensagem: "<alerta>"

    Exemplos:
      | disciplina|    select_curso    |           alerta            |
      |           |    Medicine 170    | Descrição não preenchida !! |
      |   hello   |        -           |       Required field!       |




  
   
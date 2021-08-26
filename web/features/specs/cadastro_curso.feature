# language: pt

Funcionalidade: Cadastro de Curso S8K-33
  Como um usuário do portal Experimente
  Gostaria de poder cadastrar um curso
  Para verificar a funcionalidade do portal

  Contexto: Acesso ao módulo Serasa
    * Login com:
      |  tenant   |  username  | password |
      | UNINORTE  | bruno.reis | mudar123 |

  Cenario: Cadastro de Curso válido

    Dado que eu va para a pagina de cadastro de cursos
    Quando preencho os campos conforme solicitado
    Então vejo se o curso foi salvo com sucesso e altero os status dos cursos

  @temp
  Cenario: Tentativa de Cadastro de Curso

    Dado que eu va para a pagina de cadastro de cursos
    Quando não preencho os campos "<title>" ou "<description>" ou "<key>"
    Então vejo a mensagem: "<alerta>"

    Exemplos:
      | title  |description|   key   |               alerta              |
      |        |   hello   |   012   |         Required field!           | 
      | yellow |           |   012   |      Descrição não preenchida !!  | 
      | yellow |   hello   |         | Chave Course Bb não preenchida !! |




  
   
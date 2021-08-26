require_relative "experimente_api"

class Login < ExperimenteApi #herdando desta classe
  def login(payload, instituicao)
    return self.class.post(
             "/PostLogin",
             body: payload.to_json, #informação a ser passada no corpo
             query: {instituicao: instituicao}, #query a ser passada na url
             headers: {
               "Content-Type": "application/json", #informa qual o tipo de dado no cabecalho
               "Authorization": "Basic d3NkZXY6c2VyVEkyMDE1" #autenticação
             },
           )
  end

  def find_by_email(email)
    return self.class.get(
             "/GetCursoURL",
             query: {email: email}, #query a ser passada na url
             headers: {
               "Content-Type": "application/json", #informa qual o tipo de dado no cabecalho
               "Authorization": "Basic d3NkZXY6c2VyVEkyMDE1" #autenticação
             },
           )
  end

  def find_aluno(email, instituicao)
    return self.class.get(
      "/GetCursosAluno",
      query: {email: email, HostInstituicao: instituicao}, #query a ser passada na url
      headers: {
               "Authorization": "Basic d3NkZXY6c2VyVEkyMDE1" #autenticação
             },
    )
  end
end
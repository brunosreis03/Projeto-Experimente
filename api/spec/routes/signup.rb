require_relative "experimente_api"

class Signup < ExperimenteApi #herdando desta classe
  def create(payload, instituicao)
    return self.class.post(
             "/PostCriarAluno",
             body: payload.to_json, #informação a ser passada no corpo
             query: {instituicao: instituicao}, #query a ser passada na url
             headers: {
               "Content-Type": "application/json", #informa qual o tipo de dado no cabecalho
               "Authorization": "Basic d3NkZXY6c2VyVEkyMDE1" #autenticação
             },
           )
  end
end

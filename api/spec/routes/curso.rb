require_relative "experimente_api"

class Curso < ExperimenteApi #herdando desta classe
    def find_cursos(instituicao)
    return self.class.get(
             "/GetCursoAll",
             query: {Instituicao: instituicao}, #query a ser passada na url
             headers: {
               "Authorization": "Basic d3NkZXY6c2VyVEkyMDE1" #autenticação
             },
           )
    end
end
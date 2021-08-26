require_relative "elementos_page"

class CursoPage < Elementos
    include Capybara::DSL

    def curso_page
        click_on "Cadastro"
        click_on "Cursos"
    end

    def record
       return qnt_cursos.text
    end

    def cadastro_curso(title, description, key)
        cadastrar_curso.click
        titulo.set  title
        descricao.set description
        carga_horaria.set Faker::Number.between(from: 1, to: 1000)
        chave_curso.set key
        click_on "Salvar"
    end

    def curso_nome
        return titulo.value
    end

    def ativo
        ativar_cursos.each do |ativar_curso|
            ativar_curso.click
        end
    end
end


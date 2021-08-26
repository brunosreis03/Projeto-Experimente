require_relative "elementos_page"

class CursoFaculdadePage < Elementos
    include Capybara::DSL

    def faculdade_page
        click_on "Cadastro"
        click_on "Cursos Faculdades"
    end

    def curso_faculdade(description, disciplina)
        cadastrar_curso.click
        descricao_disciplina.set description
        curso.find(:option, disciplina).select_option 
        click_on "Salvar" 
    end
end


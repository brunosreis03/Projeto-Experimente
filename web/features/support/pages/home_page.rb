require_relative "elementos_page"

class HomePage < Elementos
    include Capybara::DSL

    def logado
        return has_usuario_logado?
    end

    def function
        click_on "Cadastro"
        click_on "Conteudo"
        click_on "Cadastro"
        click_on "Pessoas"
        click_on "Cadastro"
        click_on "Categorias"
        click_on "Cadastro"
        click_on "Cursos"
        click_on "Cadastro"
        click_on "Cursos Faculdades"
        click_on "Configuracoes"
        click_on "Propriedades do Site"
        click_on "Configuracoes"
        click_on "Host Instituição"
        click_on "Relatórios"
        click_on "Pessoas/Curso"
        click_on "Home"
    end
    
    def logout
        usuario_logado.click
        click_on "Logout"
    end

end


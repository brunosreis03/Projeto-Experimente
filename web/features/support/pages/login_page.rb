require_relative "elementos_page"

class LoginPage < Elementos
    include Capybara::DSL

    def open
        visit "/"
    end

    def with(info)
        filial.find(:option, info[:tenant]).select_option
        campo_usuario.set info[:username]
        campo_senha.set info[:password]
        click_button "Login"
    end

    def deslogado
        return has_campo_usuario? 
    end

    def erro
        if has_msg_validacao? 
            return msg_validacao.text
        else
            return msg_erro.text
        end
    end
end


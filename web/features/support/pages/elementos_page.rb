class Elementos < SitePrism::Page
    include Capybara::DSL

    #Página de Login

    element :filial, "select[id$=TenantInput]"
    element :campo_usuario, "input[id$=UserNameInput]"
    element :campo_senha, "input[id$=PasswordInput]"
    element :msg_validacao, ".ValidationMessage"
    element :msg_erro, ".Feedback_Message_Error"

    #Dashboard do Experimente

    element :usuario_logado, ".LoginInfo_username"

    #Cadastro de cursos

    element :qnt_cursos, ".Counter_Message"
    element :cadastrar_curso, ".ActionAdd"
    element :titulo, "input[id$=Cursos_Titulo]"
    element :descricao, "textarea[id$=Cursos_Descricao]"
    element :carga_horaria, "input[id$=Cursos_CargaHoraria]"
    element :chave_curso, "input[id$=Cursos_ChaveCourseBb]"
    elements :ativar_cursos, ".ToggleButton"
    
    #Cadastro de disciplinas

    element :descricao_disciplina, "input[id$=CursosFaculdade_Descricao]"
    element :curso, "select[id$=CursosFaculdade_CursoId]"
end
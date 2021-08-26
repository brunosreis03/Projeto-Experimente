Dado('que eu vá para a pagina de cadastro de cursos faculdades') do
    @faculdade_page.faculdade_page
    @quantidade = @curso_page.record
end
  
Quando('cadastro um curso faculdade') do
    @faculdade_page.curso_faculdade("#{Faker::Educator.subject}", "Medicine 170")
end
  
  
Quando('não preencho os campos {string} ou {string}') do |description, disciplina|
    @faculdade_page.curso_faculdade(description, disciplina)
end

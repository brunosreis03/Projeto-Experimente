Dado('que eu va para a pagina de cadastro de cursos') do
    @curso_page.curso_page
end
  
Quando('preencho os campos conforme solicitado') do
    @quantidade = @curso_page.record
    @curso_page.cadastro_curso("#{Faker::Educator.course_name}", 
    "#{Faker::Educator.subject}", "#{Faker::Types.rb_string}" )
end
  
Quando('não preencho os campos {string} ou {string} ou {string}') do |title, description, key|
    @curso_page.curso_page
    @curso_page.cadastro_curso(title, description, key)
end
Before do
  @elementos = Elementos.new
  @login_page = LoginPage.new
  @home_page = HomePage.new
  @curso_page = CursoPage.new
  @faculdade_page = CursoFaculdadePage.new
  # page.current_window.resize_to(1400, 900) comando do capybara q trabalha com o tamanho mínimo da janela necessário de acordo com o projeto
end

After do |scenario|
  scenario_name = scenario.name.gsub(/\s+/,"_").tr("/", "_")
    
  if scenario.failed?
    temp_shot = page.save_screenshot("logs/#{scenario_name}.png")
    Allure.add_attachment( #Método do allure q adiciona anexo (recebe 3 argumentos em formato de símbolo)
      name: "#{scenario_name}",   #link para acessar a foto no relatório
      type: Allure::ContentType::PNG, #tipo de arquivo q está sendo anexado
      source: File.open(temp_shot),   #abre o arquivo
    )
  else
    temp_shot = page.save_screenshot("logs/#{scenario_name}.png") #tira um screenshot dps dos steps "Entao", armazena nesse arquivo temporario e salva nessa variável
    Allure.add_attachment( #Método do allure q adiciona anexo (recebe 3 argumentos em formato de símbolo)
      name: "#{scenario_name}",   #link para acessar a foto no relatório
      type: Allure::ContentType::PNG, #tipo de arquivo q está sendo anexado
      source: File.open(temp_shot),   #abre o arquivo
    )
  end

end

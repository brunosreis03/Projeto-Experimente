require "allure-cucumber"
require "capybara"
require "capybara/cucumber"
require "faker"
require "site_prism"
require 'site_prism/all_there'


CONFIG = YAML.load_file(File.join(Dir.pwd, "features/support/config/#{ENV["CONFIG"]}")) #módulo do ruby pra carregar arquivos no formato yml. Recurso do ruby que acessa as variaveis do ambiente

case ENV["BROWSER"] # define o browser para realizacao dos testes multibrowser

when "firefox"
  @driver = :selenium
when "chrome"
  @driver = :selenium_chrome
when "fire_headless"
  @driver = :selenium_headless
when "chrome_headless"
  @driver = :selenium_chrome_headless
else
  raise "Navegador incorreto, variável @driver está vazia :(" #aborta o processo mostrando essa mensagem
end


Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = CONFIG["url"]
  Capybara.page.driver.browser.manage.window.maximize
  config.default_max_wait_time = 5
end

AllureCucumber.configure do |config|
    config.results_directory = "/logs" #resultados na pasta logs
    config.clean_results_directory = true #sempre que for executado, o allure vai limpar a pasta log
end
  
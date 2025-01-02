require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'site_prism'
require 'rspec'
require 'rspec/expectations'

# Inicializando as configurações padrões do capybara e relacionando a variável config as configurações do capybara
Capybara.configure do |config|
    config.default_driver = :selenium_chrome        # Indicação de que estou usando o selenium com o chrome como driver principal
    config.app_host = 'http://www.linkedin.com/'    # A página que ele deve visitar para realizar os testes, como coloquei aqui como padrão, não preciso colocar essa url nos testes, apenas aspas vazias no visit ''
    config.default_max_wait_time = 5                # Setando o tempo máximo que o capybara deve esperar por um elemento na tela
end
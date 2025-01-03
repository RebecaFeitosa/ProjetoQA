# O hoocks é um recurso que executa comandos especificos antes da automação iniciar e depois da automação terminar

# Maximizar a página antes de começar o teste e enviar a mensagem de teste finalizado quando acabar o teste
Before do
    Capybara.page.driver.browser.manage.window.maximize
end

After do
    puts "Teste finalizado"
end

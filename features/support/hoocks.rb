# Maximizar a página antes de começar o teste e enviar a mensagem de teste finalizado quando acabar o teste

Before do
    Capybara.page.driver.browser.manage.window.maximize
end

After do
    puts "Teste finalizado"
end
# Escrevi o bdd (na pasta de bdd no arquivo de login), depois dei o comando 'cucumber' no terminal para gerar as chaves automáticas dos steps e colei elas abaixo
Dado('que o usuario queira se logar') do
    visit ''
    sleep 5
end

Quando('ele digitar as credenciais validas') do
    @test = LoginPage.new
    @test.userLogin
end

Entao('deve acessar o site com sucesso') do
    @home = HomePage.new
    @home.checkLoginSuccessful
end
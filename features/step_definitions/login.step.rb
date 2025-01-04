# Login com sucesso
Dado('que o usuario queira se logar') do
    login.load  # Carregar a página
end

Quando('ele digitar as credenciais validas') do
    login.userLogin(CREDENTIAL[:user][:email], CREDENTIAL[:user][:password])
end

Entao('deve acessar o site com sucesso') do
    home.checkLoginSuccessful
end

# Login sem sucesso sem digitar senha
Dado('que o usuario tente logar sem digitar a senha') do
    login.load
  end
  
  Quando('ele digitar as credenciais invalidas') do
    login.userLogin(CREDENTIAL[:user_invalid][:email], CREDENTIAL[:user_invalid][:password])
  end
  
  Entao('uma mensagem informando o erro deve aparecer') do
    login.checkInvalidUser
  end
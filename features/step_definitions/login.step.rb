
Dado('que o usuario queira se logar') do
    login.load  # Carregar a página
end

Quando('ele digitar as credenciais validas') do
    login.userLogin(CREDENTIAL[:user][:email], CREDENTIAL[:user][:password])
end

Entao('deve acessar o site com sucesso') do
    home.checkLoginSuccessful
end


Dado('que o usuario tente logar sem digitar a senha') do
    
  end
  
  Quando('ele digitar as credenciais invalidas') do
    
  end
  
  Entao('uma mensagem informando o erro deve aparecer') do
    
  end
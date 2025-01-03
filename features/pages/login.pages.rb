# Usando a página de login do LinkedIn
# Criar uma classe para a página de login
class LoginPage < SitePrism::Page

    element :emailField, :id, "username"
    element :passwordField, :id, "password"
    element :loginButton, :button, "Entrar" # Na aula o professor colocou o xpatch, mas deu erro para mim, então fiz dessa forma

    # Método para realizar o login
    def userLogin
        emailField.set "Seu email"
        passwordField.set "Sua senha"
        loginButton.click
    end

end

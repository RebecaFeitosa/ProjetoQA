# Usando a página de login do LinkedIn

class LoginPage < SitePrism::Page

    set_url ''
    element :emailField, :id, "username"
    element :passwordField, :id, "password"
    element :loginButton, :button, "Entrar"
    element :emptyPassword, :id, "error-for-password"

    # Método para realizar o login
    def userLogin(email, password)
        emailField.set (email)
        passwordField.set (password)
        loginButton.click
    end

    def checkInvalidUser
        expect(emptyPassword.text).to eql "Insira uma senha."
    end


end

# Criando a classe HomePage que herda funcionalidades da classe SitePrism::Page (que segue o padrão Page Objects)
class HomePage < SitePrism::Page

    element :userName, :xpath, "//h3[@class='profile-card-name text-heading-large']"
    element :navBarHome, :xpath, "//a[.//span[@title='Início']]"
    element :myIcon, :id, "ember17"

    def checkLoginSuccessful
        expect(userName.text).to eql "Rebeca Feitosa"   
        expect(navBarHome.text).to eql "Início"
        expect(myIcon.text).to eql "Eu"
    end

end
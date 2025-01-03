class HomePage < SitePrism::Page

    element :userName, :xpath, "//h3[@class='profile-card-name text-heading-large']"
    element :navBarHome, :xpath, "//a[.//span[@title='Início']]"
    element :myIcon, :id, "ember17"

    #.text significa que estou extraindo o texto desse elemento, .to eql significa que quero que ele seja igual ao que está entre ""
    def checkLoginSuccessful
        expect(userName.text).to eql "Rebeca Feitosa"   
        expect(navBarHome.text).to eql "Início"
        expect(myIcon.text).to eql "Eu"
    end

end
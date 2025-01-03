# Arquivo que vai inicializar todas as classes de páginas que preciso para os steps

# Pedindo para a automação ir até a pasta pages e fazer um require para cada arquivo com a extensão .page.rb
Dir[File.join(File.dirname(__FILE__),'~\..\Área de Trabalho\Estudos Rebeca\ProjetoQA\features\pages*.page.rb')].each { |file| require file}


module Page

    def login
        @login ||= LoginPage.new
    end

    def home
        @home ||= HomePage.new
    end

    def recover
        @recover ||= RecoverPage.new
    end
    
end
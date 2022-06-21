class User < SitePrism::Page
    set_url 'users/new'
    element :nome , '#user_name'
    element :sobrenome , '#user_lastname'
    element :email , '#user_email'
    element :endereco , '#user_address'
    element :universidade , '#user_university'
    element :profissao , '#user_profile'
    element :genero , '#user_gender'
    element :idade , '#user_age'

    element :criar, 'input[value="Criar"]'

    def preencher_usuario()
        nome.set 'alisson'
        sobrenome.set 'saraiva'
        email.set 'alissonsaraiva@gmail.com'
        endereco.set 'rua vicente leitão, 819, eusébio/ce'
        universidade.set 'ufc'
        profissao.set 'QA'
        genero.set 'masculino'
        idade.set '32'
        
    end

end
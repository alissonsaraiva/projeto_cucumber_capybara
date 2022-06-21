Quando('eu cadastro meu Usuário') do
    user.load
    
    user.preencher_usuario()

    #sleep(5)

    user.criar.click

    #sleep(5)
end
  
Entao('eu verifico se o usuario foi cadastrado') do
    @texto = find('#notice')
    expect(@texto.text).to eql 'Usuário Criado com sucesso'
end
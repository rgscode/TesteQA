Dado('que o usuario queira logar') do 
    @Login = LoginPage.new
    @Login.load
end

Quando('o usuario digitar as credenciais validas') do
    @Login.userLogin(CREDENTIAL[:user][:email], CREDENTIAL[:user][:password])
end

Entao('deve acessar o sistema com sucesso') do
    @home = HomePage.new
    @home.ChkHomepage
end

Dado('que o usuario queira logar_2') do 
    @Login = LoginPage.new
    @Login.load
end

Quando('o usuario digitar as credenciais invalidas') do
    @Login.userLogin(CREDENTIAL[:user][:email], CREDENTIAL[:user][:password_fail])
  end
  
  Entao('deve apresentar uma mensagem com erro') do
    @home = LoginPage.new
    @home.ChkLoginError
  end
Dado('que o usuario queira se registrar') do
    @Registrar = RegisterPage.new
    @Registrar.load
  end
  

  Quando('ele digitar as credenciais validas') do
    @Registrar.userRegister(CREDENTIAL[:user][:email], CREDENTIAL[:user][:password], CREDENTIAL[:user][:fname], CREDENTIAL[:user][:lname], CREDENTIAL[:user][:addr], CREDENTIAL[:user][:city], CREDENTIAL[:user][:zip],CREDENTIAL[:user][:cellp])
  end


  Entao('devera se cadastrar no sistema com sucesso') do
    @home = HomePage.new
    @home.ChkHomepage
  end
  
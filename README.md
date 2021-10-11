# TesteQA

<img src="https://cdn-icons-png.flaticon.com/512/919/919842.png" width="50" height="50">

## Ruby Gems

Foram escolhidas as seguintes gemas do Ruby para este teste de automação:

| Gemas |
| ------ |
| [cucumber](https://rubygems.org/gems/cucumber)|
| [capybara](https://rubygems.org/gems/capybara)|
| [selenium-webdriver](https://rubygems.org/gems/selenium-webdriver)|
| [rspec](https://rubygems.org/gems/rspec)|
| [site_prism](https://rubygems.org/gems/site_prism)|


## Instalação

A máquina deve ter o ruby e o chromium-driver instalado para executar esse teste!

| Linux | Comando | chromium-driver |
| ------ | ------ |------ |
| Debian    |sudo apt-get install ruby|sudo apt-get install chromium-driver|
| Ubuntu    |sudo apt-get install ruby|sudo apt-get install chromium-driver|
| CentOs    |sudo yum install ruby|sudo yum install chromedriver|

| Windows  |
|-------|
|http://rubyinstaller.org/downloads/|

No Linux abra o seu arquivo .rc

Caso use Zsh
```sh
nano ~/.zshrc
```
Caso use o Bash
```sh
nano ~/.bshrc
```
Adicione as seguintes linhas no final do seu arquivo rc.
```sh
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"
```

Caso o passo acima não for seguido, haverá um erro, já que o ruby não define o path dos binários no momento da instalação no Linux = > [Erro_de_path](https://stackoverflow.com/questions/53979362/you-dont-have-path-in-your-path-gem-executables-will-not-run-while-using)



Na pasta automationtest execute o comando abaixo para instalar as gemas contidas no arquivo Gemfile.

```sh
bundler install
```

Agora já deve ser possível executar os testes com o cucumber, execute o comando abaixo para registrar um usuário no site.

```sh
cucumber -p prod -t @Registrar
```

Agora execute o seguinte comando para logar:

```sh
cucumber -p prod -t @Logar
```



> Nota: `credential.rb` Arquivo que possui as credenciais utilizadas para registro e login.


> Nota: `Error 500` Significa que o site não está aceitando requests no momento, portanto os testes podem falhar.



## License
GPLv3

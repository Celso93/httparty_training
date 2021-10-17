# Httparty Examplo
Projeto criado a partir dos textos litados no medium

### Instalando as dependências
* Ubuntu 20.04
* Ruby   2.7.2

1. Instalar o versionador da linguagem (ASDF): http://asdf-vm.com/guide/getting-started.html#_3-install-asdf
2. Instalar o plugin referente a linguagem: https://github.com/asdf-vm/asdf-ruby
3. Seguir os seguintes passos após instalar o plugin
* asdf list all ruby
* asdf install ruby 2.7.2
* asdf global use ruby 2.7.2
* ruby -v
* gem install bundler
4. Após a instalação do ruby e seu gerenciador de dependências, clonar o repositório e rodar o seguinte comando de dentro do diretório:
* bundle install 

### Rodando os testes
* Rodar todos os testes: cucumber
* Rodar somente somente um cenário: cucumber -t @tag (verificar quais existem dentro do arquivo features/fixtures/*.feature)

### Informações
Teste realizado baseado no texto:
https://medium.com/@rafaelberam/automa%C3%A7%C3%A3o-de-testes-api-com-httparty-e-cucumber-bdd-d955749affa8
https://github.com/niconasc/cucumberHttparty
https://commonmark.org/help/
https://commonmark.org/help/tutorial/05-blockquotes.html
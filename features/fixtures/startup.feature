#language: pt
@starup
Funcionalidade: Manter os dados da Startup através da API

  @post
  Cenario: Cadastro de uma Startup
    Quando solicitado o metodo 'POST' no recurso
    Entao a API deve me retornar o status '201'
    E verifico a tipagem da startup criado

  @delete
  Cenario: Deletar a Startup criada
    Quando solicitado o metodo 'DELETE' no recurso
    Entao a API deve me retornar o status '200'

  @get
  Cenario: Verificar retorno de todas as statup
    Quando solicitado o metodo 'GET' no recurso
    Entao a API deve me retornar o status '200'
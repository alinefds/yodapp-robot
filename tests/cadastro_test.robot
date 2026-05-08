*** Settings ***

Resource    ../resources/base.resource
Resource    ../resources/pages/cadastro_page.resource

Test Setup        Start Session
Test Teardown     Close Session

*** Test Cases ***
Deve realizar um cadastro
    
    Clique no botão QAX
    Clique no menu de navegação
    Clique na opção Formulários
    Clique no item Cadastro
    Deve aparecer o texto Crie sua conta.
    Preencher o campo Username com Anny 
    Preencher o campo Email com teste@teste.com.br
    Preencher o campo Password com teste1234
    Deve escolher o nível Padawan
    Clique no botão CADASTRAR
    Deve aparecer o texto Tudo certo, boas vindas ao Yodapp!
    
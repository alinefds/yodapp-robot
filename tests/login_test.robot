*** Settings ***

Resource    ../resources/base_resource.resource

Test Setup        Start Session
Test Teardown     Close Session

*** Test Cases ***
Cenário: Deve logar com sucesso

    [Tags]    sucesso

    Clique no botão QAX
    Clique no menu de navegação
    Clique na opção Formulários
    Clique no item Login
    Deve aparecer o texto Olá Padawan, vamos testar o login?
    Preencher o campo Email com yoda@qax.com
    Preencher o campo Password com jedi
    Clique no botão ENTRAR
    Deve aparecer o texto Boas vindas, logado você está.

Não deve logar com senha incorreta

    [Tags]    senha_incorreta

    Clique no botão QAX
    Clique no menu de navegação
    Clique na opção Formulários
    Clique no item Login
    Deve aparecer o texto Olá Padawan, vamos testar o login?
    Preencher o campo Email com yoda@qax.com
    Preencher o campo Password com sith
    Clique no botão ENTRAR
    Deve aparecer o texto Oops! Credenciais incorretas.
*** Settings ***

Resource    ../resources/base.resource

Test Setup    Start Session
Test Teardown    Close Session

*** Test Cases ***

Deve realizar um clique simples

    Clique no botão QAX
    Clique no menu de navegação
    Clique na opção Clique em Botões
    Clique no item Clique simples
    Deve aparecer o texto CLIQUE SIMPLES
    Clique no botão CLIQUE SIMPLES
    Deve aparecer o texto Isso é um clique simples

Deve realizar um clique longo

    [Tags]    long

    Clique no botão QAX
    Clique no menu de navegação
    Clique na opção Clique em Botões
    Clique no item Clique longo
    Deve aparecer o texto CLIQUE LONGO
    Deve realizar um clique longo    
    Deve aparecer o texto Isso é um clique longo
    


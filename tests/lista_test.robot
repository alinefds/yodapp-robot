*** Settings ***

Resource    ../resources/base.resource

Test Setup    Start Session
Test Teardown    Close Session

*** Test Cases ***

Deve poder remover o Darth Vader

    Clique no botão QAX
    Clique no menu de navegação
    Clique na opção Star Wars
    Clique no item Lista
    Deve aparecer o texto Darth Vader
    Deve remover o Darth Vader 
    Não deve apresentar mais na lista
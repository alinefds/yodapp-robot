*** Settings ***

Resource    ../resources/base.resource

Test Setup        Start Session
Test Teardown     Close Session

*** Test Cases ***
Deve marca as techs que usam Appium

    Clique no botão QAX
    Clique no menu de navegação
    Clique na opção Check e Radio
    Clique no item Checkbox
    Deve aparecer o texto Marque as techs que usam Appium
    Deve ser possivel marcar as opções


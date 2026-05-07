*** Settings ***

Resource    ../resources/base.resource

Test Setup        Start session
Test Teardown     Close session

*** Test Cases ***
Cenário: Deve abrir a tela principal

    Deve aparecer o texto Mobile Training
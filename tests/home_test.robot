*** Settings ***

Resource    ../resources/base_resource.robot

Test Setup        Start session
Test Teardown     Close session

*** Test Cases ***
Cenário: Deve abrir a tela principal

    Deve aparecer o texto inicial 'Yodapp','Mobile Training','QAX'
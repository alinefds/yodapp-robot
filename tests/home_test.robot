*** Settings ***

Resource    ../resources/base_resource.robot

Test Setup    Start session
Test Teardown     Close session

*** Test Cases ***
Cenário: Deve abrir a tela principal

    Home Page Should Be Visible   
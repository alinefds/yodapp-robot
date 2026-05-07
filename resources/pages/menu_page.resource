*** Settings ***
Documentation        Login Page Actions

Resource    ../base.resource

*** Keywords ***

Clique no menu de navegação
    ${menu_hamburger}    Set Variable    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]

    Wait Until Element Is Visible    ${menu_hamburger}        # Checkpoint, garantir que o elemento esteja lá antes de clicar 
    Click Element    ${menu_hamburger}
    

Clique na opção ${item_text}

    ${menu_item}    Set Variable    xpath=//*[@resource-id="com.qaxperience.yodapp:id/navView"]//*[@text="${item_text}"]

    Wait Until Element Is Visible    ${menu_item} 
    Click Element    ${menu_item} 

Clique no item ${item}
    Click Text    ${item}
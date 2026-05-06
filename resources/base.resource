*** Settings ***

Library    AppiumLibrary

*** Variables ***

# Variavel Global dessa Suite de Teste em Letra MAIUSCULA
${START}    QAX   

*** Keywords ***

Start session	
    Open Application	http://localhost:4723        # Porta padrão do Appium    
    ...	                platformName=Android	
    ...	                deviceName=Android Emulator
    ...	                automationName=UIAutomator2
    ...	                app=${EXECDIR}/app/yodapp-beta.apk
    ...	                udid=emulator-5554
    ...	                autoGrantPermissions=true
    
Get started
    Wait Until Page Contains    ${START}        # Checkpoint, garantir que o elemento esteja lá antes de clicar    
    Click Text                  ${START}

Navigate to

    [Arguments]    ${item_text}

    ${hamburger}    Set Variable    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]

    Wait Until Element Is Visible    ${hamburger}        # Checkpoint, garantir que o elemento esteja lá antes de clicar 
    Click Element    ${hamburger}

    ${menu_item}    Set Variable    xpath=//*[@resource-id="com.qaxperience.yodapp:id/navView"]//*[@text="${item_text}"]

    Wait Until Element Is Visible    ${menu_item} 
    Click Element    ${menu_item} 

 Go to item

    [Arguments]    ${item}    ${checkpoint}


    Wait Until Page Contains    ${item} 
    Click Text                  ${item} 
    Wait Until Page Contains    ${checkpoint}


 Close session
    Close Application
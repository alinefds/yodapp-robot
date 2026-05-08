*** Settings ***

Resource    ../base.resource

*** Keywords ***

Select level
    [Arguments]    ${level}

    Click Element                     id=com.qaxperience.yodapp:id/spinnerJob
    Wait Until Element Is Visible     class=android.widget.ListView
    Click Text    ${level}   

Deve escolher o nível ${level}
    Select level    ${level}        
    
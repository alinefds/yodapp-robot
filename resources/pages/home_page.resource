*** Settings ***
Documentation        Home Page Actions

Resource    ../base.resource

*** Keywords ***
#Home Page deve estar visivel
Deve aparecer o texto inicial '${text_01}','${text_02}','${text_03}'
    Wait Until Page Contains    ${text_01}
    Wait Until Page Contains    ${text_02}
    Wait Until Page Contains    ${text_03}
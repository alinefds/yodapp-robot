*** Settings ***
Documentation        Login Page Actions

Resource    ../base.resource

*** Keywords ***

Preencher o campo ${campo} com ${dados}
    Input Text    com.qaxperience.yodapp:id/et${campo}     ${dados}
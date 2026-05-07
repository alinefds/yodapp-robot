*** Settings ***

Resource    ../base.resource

*** Keywords ***

Clique no botão ${botao}
    Wait Until Page Contains    ${botao}
    Click Text                  ${botao}

Deve aparecer o texto ${texto}
    Wait Until Page Contains    ${texto}

Aguardar elemento ${elemento}
    Wait Until Element Is Visible    ${elemento}
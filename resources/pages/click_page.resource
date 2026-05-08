*** Settings ***

Resource    ../base.resource

*** Keywords ***
Deve realizar um clique longo
    ${locator}                  Set Variable                id=com.qaxperience.yodapp:id/long_click
    ${positions}                Get Element Location        ${locator}  

    Tap With Positions          1s                          ${${positions}[x], ${positions}[y]}
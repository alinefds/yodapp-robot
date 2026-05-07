*** Settings ***
Documentation        Home Page Actions

Resource    ../base_resource.robot

*** Keywords ***
Home Page Should Be Visible
    Wait Until Page Contains    Yodapp
    Wait Until Page Contains    Mobile Training
    Wait Until Page Contains    by Papito
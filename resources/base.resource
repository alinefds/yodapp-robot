*** Settings ***

Library    AppiumLibrary

Resource    pages/home_page.resource
Resource    pages/login_page.resource
Resource    pages/menu_page.resource
Resource    pages/checkbox_page.resource
Resource    pages/click_page.resource
Resource    pages/lista_page.resource

Resource    keywords/common.resource

Resource    config/capabilities.resource


*** Keywords ***

Start Session
    Open Application	${REMOTE_URL}
    ...    platformName=${PLATFORM_NAME}
    ...    deviceName=${DEVICE_NAME}
    ...    automationName=${AUTOMATION_NAME}
    ...    udid=${UDID}
    ...    app=${APP}


Close Session
    Run Keyword And Ignore Error    Capture Page Screenshot
    Run Keyword And Ignore Error    Close Application
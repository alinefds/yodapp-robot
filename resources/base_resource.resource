*** Settings ***

Library    AppiumLibrary

Resource    pages/home_page.resource
Resource    pages/login_page.resource

*** Keywords ***

Start Session
    Open Application	http://localhost:4723        # Porta padrão do Appium    
    ...	                platformName=Android	
    ...	                deviceName=Android Emulator
    ...	                automationName=UIAutomator2
    ...	                app=${EXECDIR}/apps/android/yodapp-beta.apk
    ...	                udid=emulator-5554
    ...	                autoGrantPermissions=true
    



Close Session
    Run Keyword And Ignore Error    Capture Page Screenshot
    Run Keyword And Ignore Error    Close Application
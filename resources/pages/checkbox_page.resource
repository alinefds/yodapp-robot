*** Settings ***

Resource    ../base.resource

*** Keywords ***
Deve ser possivel marcar as opções
        @{techs}            Create List    
    ...    Ruby
    ...    Python
    ...    Java
    ...    Javascript
    ...    C#
    ...    Robot Framework
    

    FOR    ${tech}    IN    @{techs}
        Click Element            xpath=//android.widget.CheckBox[contains(@text,'${tech}')]    
    END

*** Settings ***

Documentation       This suite will handle valid credentials.

...     test - TC_OH_2

Resource    ../Resource/CommonFunctionality.resource

Test Setup      Launch Browser
#Test Teardown   Close Browser

*** Test Cases ***
Valid Credentials

     Input Text    id=txtUsername    Admin
     Input Password    id=txtPassword    admin123
     Click Element    id=btnLogin
     Page Should Contain    My Info

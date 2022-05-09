*** Settings ***

Documentation       This suite will handle invalid credentials.

...     test - TC_OH_2

Resource    ../Resource/CommonFunctionality.resource

Test Setup      Launch Browser
Test Teardown       Close Browser

*** Test Cases ***
Invalid Credentials Test

     Input Text    id=txtUsername    Admin12
     Input Password    id=txtPassword    admin123@
     Click Element    id=btnLogin
     Element Text Should Be    id=spanMessage    Invalid credentials
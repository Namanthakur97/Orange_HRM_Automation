*** Settings ***

Documentation       This suite will handle valid credentials.

...     test - TC_OH_2

Resource    ../Resource/CommonFunctionality.resource
Resource    verify_invalid_credential_suite.robot

Test Setup      Launch Browser
Test Teardown   Close Browser
Test Template   Valid Credentials

*** Test Cases ***
TC1  Admin   admin123   My Info
TC2  Admin   admin123   Dashboard

*** Keywords ***
Valid Credentials

     [Arguments]     ${username}     ${password}    ${expected_value}

     Input Text    id=txtUsername    ${username}
     Input Password    id=txtPassword    ${password}
     Click Element    id=btnLogin
     Page Should Contain     ${expected_value}

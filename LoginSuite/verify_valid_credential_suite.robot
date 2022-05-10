*** Settings ***

Documentation       This suite will handle valid credentials.

...     test - TC_OH_2

Resource    ../Resource/CommonFunctionality.resource
Resource    verify_invalid_credential_suite.robot

Test Setup      Launch Browser
Test Teardown   Close Browser
Test Template   Valid Credentials

Library     DataDriver      file=../test_data/orange_data.xlsx      sheet_name=Valid Credentials

*** Test Cases ***
TC1

*** Keywords ***
Valid Credentials

     [Arguments]     ${username}     ${password}    ${expected_value}

     Input Text    id=txtUsername    ${username}
     Input Password    id=txtPassword    ${password}
     Click Element    id=btnLogin
     Page Should Contain     ${expected_value}

*** Settings ***

Documentation       This suite will handle invalid credentials.

...

Resource    ../Resource/CommonFunctionality.resource

Test Setup      Launch Browser
Test Teardown       Close Browser

*** Test Cases ***
Emergency Contact Test

*** Settings ***

Documentation       This suite will handle invalid credentials.

...

Resource    ../Resource/CommonFunctionality.resource

Test Setup      Launch Browser
Test Teardown       Close Browser

*** Test Cases ***
Emergency Contact Test

     Input Text    id=txtUsername    Admin
     Input Password    id=txtPassword    admin123
     Click Element    id=btnLogin
     Page Should Contain    My Info

     Click Element    id=menu_pim_viewMyDetails
     Click Element    link=Emergency Contacts
     Click Element    id=btnAddContact
     Input Text    id=emgcontacts_name    Satish
     Input Text    id=emgcontacts_relationship    Brother
     Input Text    id=emgcontacts_homePhone    454554
     Input Text    id=emgcontacts_mobilePhone    44554
     Input Text    id=emgcontacts_workPhone    7887
     Click Element    id=btnSaveEContact

     #validation
     Table Should Contain    id=emgcontact_list    Satish



*** Settings ***
Documentation       this suite will handle valid credential
...     test - tittle
Resource        ../Resource/CommonFunctionality_resource.robot
Test Setup      launch browser
Test Teardown       Close Browser
*** Test Cases ***
valid credential test

    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Element    id=btnlogin
    Page Should Contain    My Info
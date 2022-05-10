*** Settings ***
Documentation       this suite will handle valid credential
...     test - tittle
Resource        ../Resource/CommonFunctionality_resource.robot
Test Setup      launch browser
Test Teardown       Close Browser

Test Template       Invalid credential template
*** Test Cases ***
TC1     john        john123     Invalid credentials
TC2     peter       peter123        Invalid credentials

*** Keywords ***
Invalid credential template
    [Arguments]     ${username}     ${password}     ${expected_error}
    Input Text    id=txtUsername    ${username}
    Input Password    id=txtPassword    ${password}
    Click Element    id=btnLogin
    Element Text Should Be    id=spanMessage    expected=${expected_error}

*** Settings ***
Documentation       this suite will handle valid credential
...     test - tittle
Resource        ../Resource/CommonFunctionality_resource.robot
Test Setup      launch browser
Test Teardown       Close Browser
Test Template       valid credential template
Library     DataDriver      file=../Test_data/Orange_data.xlsx     sheet_name=valid credentials
*** Test Cases ***
TC1
*** Keywords ***
valid credential template
    [Arguments]     ${username}     ${password}     ${expected_value}
    Input Text    id=txtUsername    ${username}
    Input Password    id=txtPassword    ${password}
    Click Element    id=btnLogin
    Page Should Contain    ${expected_value}
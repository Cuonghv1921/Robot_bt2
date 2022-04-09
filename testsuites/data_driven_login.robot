*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/keywords.robot
Variables    ../pageobjectmodel/elements.py
Library    DataDriver    ../testdata/dataTestLogin.xlsx    sheet_name=Sheet1

Suite Setup    Open browser to login
Suite Teardown    Close All Browsers    
Test Template    Invalid login
*** Test Case ***
LoginTestWithExcel    using     ${username}  and  ${password}


*** Keywords ***
Invalid login
    [Tags]    Regression
    [Arguments]    ${username}    ${password}
    Input Email and Password    ${username}    ${password}
    Click login button
    Login failed msg
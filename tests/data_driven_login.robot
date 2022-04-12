*** Settings ***
Library         SeleniumLibrary
Resource        ../resources/keywords.robot
Resource        ../data/variablesinput.robot
Variables       ../resources/pageobjectmodel/elements.py
Library         DataDriver    ../data/dataTestLogin.xlsx    sheet_name=Sheet1

Suite Setup       Open browser to login
Suite Teardown    Close All Browsers    
Test Template     Invalid login

*** Test Case ***                    
login with exel data     using     ${username}  and  ${password}

*** Keywords ***
Invalid login
    [Arguments]    ${username}    ${password}
    Input Email and Password    ${username}    ${password}
    Click login button
    Login failed msg
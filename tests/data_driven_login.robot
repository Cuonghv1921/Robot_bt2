*** Settings ***
Library         SeleniumLibrary
Resource        ../resources/POM_loginPage.resource
Resource        ../data/variablesinput.resource
Library         DataDriver    ../data/dataTestLogin.xlsx    sheet_name=Sheet1

Suite Setup       Open browser to login
Suite Teardown    Close All Browsers    
Test Template     Invalid login

*** Test Case ***                    
login with exel data    ${username}    ${password}

*** Keywords ***
Invalid login
    [Arguments]    ${username}    ${password}
    Input Email and Password    ${username}    ${password}
    verify Login failed
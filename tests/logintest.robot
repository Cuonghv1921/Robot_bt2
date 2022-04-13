*** Settings ***
Library          SeleniumLibrary
Resource        ../resources/POM_loginPage.resource
Resource         ../data/variablesinput.resource
Test Setup       Open browser to login
Test Teardown    Close All Browsers

*** Test Case ***
login successfully
    [Tags]    Smoke
    Input Email and Password    ${right_email}    ${right_pwd}
    verify Login successfully

login failed, wrong email and right password
    [Tags]    Regression
    Input Email and Password    ${wrong_email}    ${right_pwd}
    verify Login failed

login failed, wrong email and wrong password
    [Tags]    Regression
    Input Email and Password    ${wrong_email}    ${wrong_pwd}
    verify Login failed

login failed, right email and wrong password
    [Tags]    Regression
    Input Email and Password    ${right_email}    ${wrong_pwd}
    verify Login failed
    
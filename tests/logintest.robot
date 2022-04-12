*** Settings ***
Library          SeleniumLibrary
Resource         ../resources/keywords.robot
Resource         ../data/variablesinput.robot
Variables        ../resources/pageobjectmodel/elements.py
Test Setup       Open browser to login
Test Teardown    Close All Browsers

*** Test Case ***
login successfully
    [Tags]    Smoke
    Input Email and Password    ${right_email}    ${right_pwd}
    Click login button
    Login successfully msg

login failed, wrong email and right password
    [Tags]    Regression
    Input Email and Password    ${wrong_email}    ${right_pwd}
    Click login button
    login failed msg

login failed, wrong email and wrong password
    [Tags]    Regression
    Input Email and Password    ${wrong_email}    ${wrong_pwd}
    Click login button
    login failed msg

login failed, right email and wrong password
    [Tags]    Regression
    Input Email and Password    ${right_email}    ${wrong_pwd}
    Click login button
    login failed msg
    
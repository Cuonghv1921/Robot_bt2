*** Settings ***
Library          SeleniumLibrary
Resource         ../resources/keywords.robot
Variables        ../pageobjectmodel/elements.py
Test Setup       Open browser to login
Test Teardown    Close All Browsers

*** Test Case ***
login successfully
    [Tags]    Smoke
    Input Email and Password    user@phptravels.com    demouser
    Click login button
    Login successfully msg

login failed, wrong email and right password
    [Tags]    Regression
    Input Email and Password    user@phptravels    demouser
    Click login button
    login failed msg

login failed, wrong email and wrong password
    [Tags]    Regression
    Input Email and Password    user@phptravels    demous
    Click login button
    login failed msg

login failed, right email and wrong password
    [Tags]    Regression
    Input Email and Password    user@phptravels.com    demo
    Click login button
    login failed msg
    
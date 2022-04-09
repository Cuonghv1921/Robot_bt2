*** Settings ***
Library          SeleniumLibrary
Resource         ../resources/keywords.robot
Variables        ../pageobjectmodel/elements.py
Test Setup       Open browser to register
Test Teardown    Close All Browsers

*** Test Case ***
Register successfully
    [Tags]    Smoke
    Input first name        Cuong
    Input last name         Ha
    Input phone number      0123456789
    Input email             txt1234@gmail.com
    Input password          12345
    Select account type     Supplier
    Click sign up button
    Sign up successfully msg

Register faield wehn email is existed
    [Tags]    Smoke
    Input first name        Cuong
    Input last name         Ha
    Input phone number      0123456789
    Input email             txt1234@gmail.com
    Input password          12345
    Select account type     Supplier
    Click sign up button
    Sign up failed msg